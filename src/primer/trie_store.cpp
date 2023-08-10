#include "primer/trie_store.h"
#include "common/exception.h"

namespace bustub {

template <class T>
auto TrieStore::Get(std::string_view key) -> std::optional<ValueGuard<T>> {
  // Pseudo-code:
  // (1) Take the root lock, get the root, and release the root lock. Don't lookup the value in the
  //     trie while holding the root lock.
  // (2) Lookup the value in the trie.
  // (3) If the value is found, return a ValueGuard object that holds a reference to the value and the
  //     root. Otherwise, return std::nullopt.

  root_lock_.lock();
  Trie root_copy = root_;  // (1) Copy the root
  root_lock_.unlock();     // (1) Release the root lock

  auto value = root_copy.Get<T>(key);  // (2) Lookup the value in the copied root
  if (value) {
    return ValueGuard<T>(root_copy, *value);  // (3) Return ValueGuard with the value and copied root
  }

  return std::nullopt;  // (3) Value not found, return empty optional
}

template <class T>
void TrieStore::Put(std::string_view key, T value) {
  // You will need to ensure there is only one writer at a time. Think of how you can achieve this.
  // The logic should be somehow similar to `TrieStore::Get`.

  write_lock_.lock();
  root_lock_.lock();
  Trie copied_root = root_;  // Make a copy of the root

  root_lock_.unlock();  // Release the lock on root while performing operations on newRoot

  auto new_root = copied_root.Put<T>(key, std::move(value));  // Perform the Put operation on the copied root

  root_lock_.lock();            // Re-acquire the lock on root to update it
  root_ = std::move(new_root);  // Update the root with the modified newRoot
  root_lock_.unlock();
  write_lock_.unlock();
}

void TrieStore::Remove(std::string_view key) {
  write_lock_.lock();
  root_lock_.lock();
  Trie copy_root = root_;  // Make a copy of the root

  root_lock_.unlock();  // Release the lock on root while performing operations on newRoot

  auto new_root = copy_root.Remove(key);  // Perform the Remove operation on the copied root

  root_lock_.lock();            // Re-acquire the lock on root to update it
  root_ = std::move(new_root);  // Updat
  root_lock_.unlock();
  write_lock_.unlock();
}

// Below are explicit instantiation of template functions.

template auto TrieStore::Get(std::string_view key) -> std::optional<ValueGuard<uint32_t>>;
template void TrieStore::Put(std::string_view key, uint32_t value);

template auto TrieStore::Get(std::string_view key) -> std::optional<ValueGuard<std::string>>;
template void TrieStore::Put(std::string_view key, std::string value);

// If your solution cannot compile for non-copy tests, you can remove the below lines to get partial score.

using Integer = std::unique_ptr<uint32_t>;

template auto TrieStore::Get(std::string_view key) -> std::optional<ValueGuard<Integer>>;
template void TrieStore::Put(std::string_view key, Integer value);

template auto TrieStore::Get(std::string_view key) -> std::optional<ValueGuard<MoveBlocked>>;
template void TrieStore::Put(std::string_view key, MoveBlocked value);

}  // namespace bustub
