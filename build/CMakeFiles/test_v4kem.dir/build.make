# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mac2/Desktop/project/v4kem_qr

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mac2/Desktop/project/v4kem_qr/build

# Include any dependencies generated for this target.
include CMakeFiles/test_v4kem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_v4kem.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_v4kem.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_v4kem.dir/flags.make

CMakeFiles/test_v4kem.dir/codegen:
.PHONY : CMakeFiles/test_v4kem.dir/codegen

CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.o: CMakeFiles/test_v4kem.dir/flags.make
CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.o: /Users/mac2/Desktop/project/v4kem_qr/tests/test_v4kem.c
CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.o: CMakeFiles/test_v4kem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.o -MF CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.o.d -o CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.o -c /Users/mac2/Desktop/project/v4kem_qr/tests/test_v4kem.c

CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/mac2/Desktop/project/v4kem_qr/tests/test_v4kem.c > CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.i

CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/mac2/Desktop/project/v4kem_qr/tests/test_v4kem.c -o CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.s

# Object files for target test_v4kem
test_v4kem_OBJECTS = \
"CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.o"

# External object files for target test_v4kem
test_v4kem_EXTERNAL_OBJECTS =

test_v4kem: CMakeFiles/test_v4kem.dir/tests/test_v4kem.c.o
test_v4kem: CMakeFiles/test_v4kem.dir/build.make
test_v4kem: libv4kem.a
test_v4kem: /opt/homebrew/lib/libssl.dylib
test_v4kem: /opt/homebrew/lib/libcrypto.dylib
test_v4kem: CMakeFiles/test_v4kem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_v4kem"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_v4kem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_v4kem.dir/build: test_v4kem
.PHONY : CMakeFiles/test_v4kem.dir/build

CMakeFiles/test_v4kem.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_v4kem.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_v4kem.dir/clean

CMakeFiles/test_v4kem.dir/depend:
	cd /Users/mac2/Desktop/project/v4kem_qr/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac2/Desktop/project/v4kem_qr /Users/mac2/Desktop/project/v4kem_qr /Users/mac2/Desktop/project/v4kem_qr/build /Users/mac2/Desktop/project/v4kem_qr/build /Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles/test_v4kem.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/test_v4kem.dir/depend

