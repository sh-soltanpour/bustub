# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shahryar/Programming/cmu-db-course/bustub

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shahryar/Programming/cmu-db-course/bustub/build_rel

# Utility rule file for check-clang-tidy-p4.

# Include any custom commands dependencies for this target.
include CMakeFiles/check-clang-tidy-p4.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/check-clang-tidy-p4.dir/progress.make

CMakeFiles/check-clang-tidy-p4:
	/Users/shahryar/Programming/cmu-db-course/bustub/build_support/run_clang_tidy.py -clang-tidy-binary /opt/homebrew/opt/llvm@14/bin/clang-tidy -p /Users/shahryar/Programming/cmu-db-course/bustub/build_rel src/include/concurrency/lock_manager.h src/concurrency/lock_manager.cpp src/include/concurrency/transaction_manager.h src/concurrency/transaction_manager.cpp tools/terrier_bench/terrier_bench_config.h src/include/execution/executors/aggregation_executor.h src/include/execution/executors/delete_executor.h src/include/execution/executors/filter_executor.h src/include/execution/executors/hash_join_executor.h src/include/execution/executors/index_scan_executor.h src/include/execution/executors/insert_executor.h src/include/execution/executors/limit_executor.h src/include/execution/executors/nested_loop_join_executor.h src/include/execution/executors/seq_scan_executor.h src/include/execution/executors/sort_executor.h src/include/execution/executors/topn_executor.h src/include/execution/executors/update_executor.h src/execution/aggregation_executor.cpp src/execution/delete_executor.cpp src/execution/filter_executor.cpp src/execution/hash_join_executor.cpp src/execution/index_scan_executor.cpp src/execution/insert_executor.cpp src/execution/limit_executor.cpp src/execution/nested_loop_join_executor.cpp src/execution/seq_scan_executor.cpp src/execution/sort_executor.cpp src/execution/topn_executor.cpp src/execution/update_executor.cpp src/include/optimizer/optimizer.h src/include/optimizer/optimizer_internal.h src/optimizer/nlj_as_hash_join.cpp src/optimizer/optimizer_custom_rules.cpp src/optimizer/sort_limit_as_topn.cpp src/optimizer/optimizer_internal.cpp src/common/bustub_ddl.cpp src/include/execution/plans/index_scan_plan.h src/include/storage/page/b_plus_tree_page.h src/storage/page/b_plus_tree_page.cpp src/include/storage/page/b_plus_tree_internal_page.h src/storage/page/b_plus_tree_internal_page.cpp src/include/storage/page/b_plus_tree_leaf_page.h src/storage/page/b_plus_tree_leaf_page.cpp src/include/storage/index/index_iterator.h src/storage/index/index_iterator.cpp src/include/storage/index/b_plus_tree.h src/storage/index/b_plus_tree.cpp src/include/storage/page/page_guard.h src/storage/page/page_guard.cpp src/include/buffer/lru_k_replacer.h src/buffer/lru_k_replacer.cpp src/include/buffer/buffer_pool_manager.h src/buffer/buffer_pool_manager.cpp

check-clang-tidy-p4: CMakeFiles/check-clang-tidy-p4
check-clang-tidy-p4: CMakeFiles/check-clang-tidy-p4.dir/build.make
.PHONY : check-clang-tidy-p4

# Rule to build all files generated by this target.
CMakeFiles/check-clang-tidy-p4.dir/build: check-clang-tidy-p4
.PHONY : CMakeFiles/check-clang-tidy-p4.dir/build

CMakeFiles/check-clang-tidy-p4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/check-clang-tidy-p4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/check-clang-tidy-p4.dir/clean

CMakeFiles/check-clang-tidy-p4.dir/depend:
	cd /Users/shahryar/Programming/cmu-db-course/bustub/build_rel && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shahryar/Programming/cmu-db-course/bustub /Users/shahryar/Programming/cmu-db-course/bustub /Users/shahryar/Programming/cmu-db-course/bustub/build_rel /Users/shahryar/Programming/cmu-db-course/bustub/build_rel /Users/shahryar/Programming/cmu-db-course/bustub/build_rel/CMakeFiles/check-clang-tidy-p4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/check-clang-tidy-p4.dir/depend

