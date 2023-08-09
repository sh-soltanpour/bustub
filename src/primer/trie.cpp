#include "primer/trie.h"
#include <tclTomMathDecls.h>
#include <string_view>
#include "common/exception.h"

namespace bustub {

template <class T>
auto Trie::Get(std::string_view key) const -> const T * {
  std::shared_ptr<const TrieNode> current = root_;
  for (char c : key) {
    auto next = current->children_.find(c);
    if (next == current->children_.end()) {
      return nullptr;
    }
    current = next->second;
  }

  const auto *value_node = dynamic_cast<const TrieNodeWithValue<T> *>(current.get());
  if (!value_node) {
    return nullptr;
  }
  return value_node->value_.get();

  // You should walk through the trie to find the node corresponding to the key. If the node doesn't exist, return
  // nullptr. After you find the node, you should use `dynamic_cast` to cast it to `const TrieNodeWithValue<T> *`. If
  // dynamic_cast returns `nullptr`, it means the type of the value is mismatched, and you should return nullptr.
  // Otherwise, return the value.
}

template <class T>
auto Trie::Put(std::string_view key, T value) const -> Trie {
  if (key.length() == 0) {
    std::shared_ptr<T> shared_value = std::make_shared<T>(std::move(value));  // Create shared_ptr for value
    auto new_node = std::make_shared<TrieNodeWithValue<T>>(TrieNodeWithValue(shared_value));
    for (const auto &child : root_->children_) {
      new_node->children_.insert(child);
    }
    return Trie(new_node);
  }

  std::shared_ptr<TrieNode> current = root_->Clone();
  auto trie = Trie(current);
  std::shared_ptr<TrieNode> parent;
  unsigned int i = 0;

  for (char c : key) {
    i++;
    auto next = current->children_.find(c);
    if (next != current->children_.end()) {
      if (i == key.length()) {
        // Change the current node to value node, and update the value
        std::shared_ptr<T> shared_value = std::make_shared<T>(std::move(value));  // Create shared_ptr for value
        auto new_node = std::make_shared<TrieNodeWithValue<T>>(TrieNodeWithValue(shared_value));
        for (const auto &child : next->second->children_) {
          new_node->children_.insert(child);
        }
        current->children_[c] = new_node;
      } else {
        parent = current;
        current = next->second->Clone();
        parent->children_[key[i - 1]] = current;
      }
    } else {
      if (i == key.length()) {
        std::shared_ptr<T> shared_value = std::make_shared<T>(std::move(value));  // Create shared_ptr for value
        auto new_node = std::make_shared<TrieNodeWithValue<T>>(TrieNodeWithValue(shared_value));
        new_node->is_value_node_ = true;
        current->children_.insert(std::make_pair(c, new_node));
      } else {
        auto new_node = std::make_shared<TrieNode>();
        current->children_.insert(std::make_pair(c, new_node));
        parent = current;
        current = new_node;
      }
    }
  }

  //  if (!current->is_value_node_) {
  //    current->is_value_node_ = true;
  //  }

  return trie;
}

auto Trie::Remove(std::string_view key) const -> Trie {
  std::shared_ptr<TrieNode> current = root_->Clone();
  auto trie = Trie(current);
  std::shared_ptr<TrieNode> parent;

  unsigned int i = 0;
  for (char c : key) {
    i++;
    auto next = current->children_.find(c);
    if (next == current->children_.end()) {
      return *this;
    }
    parent = current;
    current = next->second->Clone();
    parent->children_[key[i - 1]] = current;
  }
  if (current->children_.empty()) {
    parent->children_.erase(key[i - 1]);
  } else {
    auto new_node = std::make_shared<TrieNode>();
    for (const auto &child : current->children_) {
      new_node->children_.insert(child);
    }
    parent->children_[key[i - 1]] = new_node;
  }
  return trie;

  // You should walk through the trie and remove nodes if necessary. If the node doesn't contain a value any more,
  // you should convert it to `TrieNode`. If a node doesn't have children any more, you should remove it.
}

// Below are explicit instantiation of template functions.
//
// Generally people would write the implementation of template classes and functions in the header file. However, we
// separate the implementation into a .cpp file to make things clearer. In order to make the compiler know the
// implementation of the template functions, we need to explicitly instantiate them here, so that they can be picked up
// by the linker.

template auto Trie::Put(std::string_view key, uint32_t value) const -> Trie;
template auto Trie::Get(std::string_view key) const -> const uint32_t *;

template auto Trie::Put(std::string_view key, uint64_t value) const -> Trie;
template auto Trie::Get(std::string_view key) const -> const uint64_t *;

template auto Trie::Put(std::string_view key, std::string value) const -> Trie;
template auto Trie::Get(std::string_view key) const -> const std::string *;

// If your solution cannot compile for non-copy tests, you can remove the below lines to get partial score.

using Integer = std::unique_ptr<uint32_t>;

template auto Trie::Put(std::string_view key, Integer value) const -> Trie;
template auto Trie::Get(std::string_view key) const -> const Integer *;

template auto Trie::Put(std::string_view key, MoveBlocked value) const -> Trie;
template auto Trie::Get(std::string_view key) const -> const MoveBlocked *;

}  // namespace bustub
