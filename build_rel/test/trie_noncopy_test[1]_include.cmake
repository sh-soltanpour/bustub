if(EXISTS "/Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test/trie_noncopy_test[1]_tests.cmake")
  include("/Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test/trie_noncopy_test[1]_tests.cmake")
else()
  add_test(trie_noncopy_test_NOT_BUILT trie_noncopy_test_NOT_BUILT)
endif()
