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

# Include any dependencies generated for this target.
include test/CMakeFiles/trie_store_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/trie_store_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/trie_store_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/trie_store_test.dir/flags.make

test/CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.o: test/CMakeFiles/trie_store_test.dir/flags.make
test/CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.o: /Users/shahryar/Programming/cmu-db-course/bustub/test/primer/trie_store_test.cpp
test/CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.o: test/CMakeFiles/trie_store_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shahryar/Programming/cmu-db-course/bustub/build_rel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.o"
	cd /Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.o -MF CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.o.d -o CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.o -c /Users/shahryar/Programming/cmu-db-course/bustub/test/primer/trie_store_test.cpp

test/CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.i"
	cd /Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shahryar/Programming/cmu-db-course/bustub/test/primer/trie_store_test.cpp > CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.i

test/CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.s"
	cd /Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shahryar/Programming/cmu-db-course/bustub/test/primer/trie_store_test.cpp -o CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.s

# Object files for target trie_store_test
trie_store_test_OBJECTS = \
"CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.o"

# External object files for target trie_store_test
trie_store_test_EXTERNAL_OBJECTS =

test/trie_store_test: test/CMakeFiles/trie_store_test.dir/primer/trie_store_test.cpp.o
test/trie_store_test: test/CMakeFiles/trie_store_test.dir/build.make
test/trie_store_test: lib/libbustub.a
test/trie_store_test: lib/libgtest.a
test/trie_store_test: lib/libgmock_main.a
test/trie_store_test: lib/libbustub_murmur3.a
test/trie_store_test: lib/libduckdb_pg_query.a
test/trie_store_test: lib/libfmt.a
test/trie_store_test: lib/libfort.a
test/trie_store_test: lib/libgmock.a
test/trie_store_test: lib/libgtest.a
test/trie_store_test: test/CMakeFiles/trie_store_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shahryar/Programming/cmu-db-course/bustub/build_rel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable trie_store_test"
	cd /Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/trie_store_test.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test && /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake -D TEST_TARGET=trie_store_test -D TEST_EXECUTABLE=/Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test/trie_store_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test -D "TEST_EXTRA_ARGS=--gtest_color=auto;--gtest_output=xml:/Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test/trie_store_test.xml;--gtest_catch_exceptions=0" -D "TEST_PROPERTIES=TIMEOUT;120" -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=trie_store_test_TESTS -D CTEST_FILE=/Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test/trie_store_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=120 -D TEST_XML_OUTPUT_DIR= -P /opt/homebrew/Cellar/cmake/3.25.1/share/cmake/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
test/CMakeFiles/trie_store_test.dir/build: test/trie_store_test
.PHONY : test/CMakeFiles/trie_store_test.dir/build

test/CMakeFiles/trie_store_test.dir/clean:
	cd /Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test && $(CMAKE_COMMAND) -P CMakeFiles/trie_store_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/trie_store_test.dir/clean

test/CMakeFiles/trie_store_test.dir/depend:
	cd /Users/shahryar/Programming/cmu-db-course/bustub/build_rel && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shahryar/Programming/cmu-db-course/bustub /Users/shahryar/Programming/cmu-db-course/bustub/test /Users/shahryar/Programming/cmu-db-course/bustub/build_rel /Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test /Users/shahryar/Programming/cmu-db-course/bustub/build_rel/test/CMakeFiles/trie_store_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/trie_store_test.dir/depend

