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
include CMakeFiles/v4kem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/v4kem.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/v4kem.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/v4kem.dir/flags.make

CMakeFiles/v4kem.dir/codegen:
.PHONY : CMakeFiles/v4kem.dir/codegen

CMakeFiles/v4kem.dir/src/v4kem.c.o: CMakeFiles/v4kem.dir/flags.make
CMakeFiles/v4kem.dir/src/v4kem.c.o: /Users/mac2/Desktop/project/v4kem_qr/src/v4kem.c
CMakeFiles/v4kem.dir/src/v4kem.c.o: CMakeFiles/v4kem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/v4kem.dir/src/v4kem.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/v4kem.dir/src/v4kem.c.o -MF CMakeFiles/v4kem.dir/src/v4kem.c.o.d -o CMakeFiles/v4kem.dir/src/v4kem.c.o -c /Users/mac2/Desktop/project/v4kem_qr/src/v4kem.c

CMakeFiles/v4kem.dir/src/v4kem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/v4kem.dir/src/v4kem.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/mac2/Desktop/project/v4kem_qr/src/v4kem.c > CMakeFiles/v4kem.dir/src/v4kem.c.i

CMakeFiles/v4kem.dir/src/v4kem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/v4kem.dir/src/v4kem.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/mac2/Desktop/project/v4kem_qr/src/v4kem.c -o CMakeFiles/v4kem.dir/src/v4kem.c.s

CMakeFiles/v4kem.dir/src/mlwe.c.o: CMakeFiles/v4kem.dir/flags.make
CMakeFiles/v4kem.dir/src/mlwe.c.o: /Users/mac2/Desktop/project/v4kem_qr/src/mlwe.c
CMakeFiles/v4kem.dir/src/mlwe.c.o: CMakeFiles/v4kem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/v4kem.dir/src/mlwe.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/v4kem.dir/src/mlwe.c.o -MF CMakeFiles/v4kem.dir/src/mlwe.c.o.d -o CMakeFiles/v4kem.dir/src/mlwe.c.o -c /Users/mac2/Desktop/project/v4kem_qr/src/mlwe.c

CMakeFiles/v4kem.dir/src/mlwe.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/v4kem.dir/src/mlwe.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/mac2/Desktop/project/v4kem_qr/src/mlwe.c > CMakeFiles/v4kem.dir/src/mlwe.c.i

CMakeFiles/v4kem.dir/src/mlwe.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/v4kem.dir/src/mlwe.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/mac2/Desktop/project/v4kem_qr/src/mlwe.c -o CMakeFiles/v4kem.dir/src/mlwe.c.s

CMakeFiles/v4kem.dir/src/puf.c.o: CMakeFiles/v4kem.dir/flags.make
CMakeFiles/v4kem.dir/src/puf.c.o: /Users/mac2/Desktop/project/v4kem_qr/src/puf.c
CMakeFiles/v4kem.dir/src/puf.c.o: CMakeFiles/v4kem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/v4kem.dir/src/puf.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/v4kem.dir/src/puf.c.o -MF CMakeFiles/v4kem.dir/src/puf.c.o.d -o CMakeFiles/v4kem.dir/src/puf.c.o -c /Users/mac2/Desktop/project/v4kem_qr/src/puf.c

CMakeFiles/v4kem.dir/src/puf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/v4kem.dir/src/puf.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/mac2/Desktop/project/v4kem_qr/src/puf.c > CMakeFiles/v4kem.dir/src/puf.c.i

CMakeFiles/v4kem.dir/src/puf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/v4kem.dir/src/puf.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/mac2/Desktop/project/v4kem_qr/src/puf.c -o CMakeFiles/v4kem.dir/src/puf.c.s

CMakeFiles/v4kem.dir/src/sram_puf.c.o: CMakeFiles/v4kem.dir/flags.make
CMakeFiles/v4kem.dir/src/sram_puf.c.o: /Users/mac2/Desktop/project/v4kem_qr/src/sram_puf.c
CMakeFiles/v4kem.dir/src/sram_puf.c.o: CMakeFiles/v4kem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/v4kem.dir/src/sram_puf.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/v4kem.dir/src/sram_puf.c.o -MF CMakeFiles/v4kem.dir/src/sram_puf.c.o.d -o CMakeFiles/v4kem.dir/src/sram_puf.c.o -c /Users/mac2/Desktop/project/v4kem_qr/src/sram_puf.c

CMakeFiles/v4kem.dir/src/sram_puf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/v4kem.dir/src/sram_puf.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/mac2/Desktop/project/v4kem_qr/src/sram_puf.c > CMakeFiles/v4kem.dir/src/sram_puf.c.i

CMakeFiles/v4kem.dir/src/sram_puf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/v4kem.dir/src/sram_puf.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/mac2/Desktop/project/v4kem_qr/src/sram_puf.c -o CMakeFiles/v4kem.dir/src/sram_puf.c.s

CMakeFiles/v4kem.dir/src/sha3.c.o: CMakeFiles/v4kem.dir/flags.make
CMakeFiles/v4kem.dir/src/sha3.c.o: /Users/mac2/Desktop/project/v4kem_qr/src/sha3.c
CMakeFiles/v4kem.dir/src/sha3.c.o: CMakeFiles/v4kem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/v4kem.dir/src/sha3.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/v4kem.dir/src/sha3.c.o -MF CMakeFiles/v4kem.dir/src/sha3.c.o.d -o CMakeFiles/v4kem.dir/src/sha3.c.o -c /Users/mac2/Desktop/project/v4kem_qr/src/sha3.c

CMakeFiles/v4kem.dir/src/sha3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/v4kem.dir/src/sha3.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/mac2/Desktop/project/v4kem_qr/src/sha3.c > CMakeFiles/v4kem.dir/src/sha3.c.i

CMakeFiles/v4kem.dir/src/sha3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/v4kem.dir/src/sha3.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/mac2/Desktop/project/v4kem_qr/src/sha3.c -o CMakeFiles/v4kem.dir/src/sha3.c.s

CMakeFiles/v4kem.dir/src/randombytes.c.o: CMakeFiles/v4kem.dir/flags.make
CMakeFiles/v4kem.dir/src/randombytes.c.o: /Users/mac2/Desktop/project/v4kem_qr/src/randombytes.c
CMakeFiles/v4kem.dir/src/randombytes.c.o: CMakeFiles/v4kem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/v4kem.dir/src/randombytes.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/v4kem.dir/src/randombytes.c.o -MF CMakeFiles/v4kem.dir/src/randombytes.c.o.d -o CMakeFiles/v4kem.dir/src/randombytes.c.o -c /Users/mac2/Desktop/project/v4kem_qr/src/randombytes.c

CMakeFiles/v4kem.dir/src/randombytes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/v4kem.dir/src/randombytes.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/mac2/Desktop/project/v4kem_qr/src/randombytes.c > CMakeFiles/v4kem.dir/src/randombytes.c.i

CMakeFiles/v4kem.dir/src/randombytes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/v4kem.dir/src/randombytes.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/mac2/Desktop/project/v4kem_qr/src/randombytes.c -o CMakeFiles/v4kem.dir/src/randombytes.c.s

CMakeFiles/v4kem.dir/src/kdf.c.o: CMakeFiles/v4kem.dir/flags.make
CMakeFiles/v4kem.dir/src/kdf.c.o: /Users/mac2/Desktop/project/v4kem_qr/src/kdf.c
CMakeFiles/v4kem.dir/src/kdf.c.o: CMakeFiles/v4kem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/v4kem.dir/src/kdf.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/v4kem.dir/src/kdf.c.o -MF CMakeFiles/v4kem.dir/src/kdf.c.o.d -o CMakeFiles/v4kem.dir/src/kdf.c.o -c /Users/mac2/Desktop/project/v4kem_qr/src/kdf.c

CMakeFiles/v4kem.dir/src/kdf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/v4kem.dir/src/kdf.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/mac2/Desktop/project/v4kem_qr/src/kdf.c > CMakeFiles/v4kem.dir/src/kdf.c.i

CMakeFiles/v4kem.dir/src/kdf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/v4kem.dir/src/kdf.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/mac2/Desktop/project/v4kem_qr/src/kdf.c -o CMakeFiles/v4kem.dir/src/kdf.c.s

CMakeFiles/v4kem.dir/src/verify.c.o: CMakeFiles/v4kem.dir/flags.make
CMakeFiles/v4kem.dir/src/verify.c.o: /Users/mac2/Desktop/project/v4kem_qr/src/verify.c
CMakeFiles/v4kem.dir/src/verify.c.o: CMakeFiles/v4kem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/v4kem.dir/src/verify.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/v4kem.dir/src/verify.c.o -MF CMakeFiles/v4kem.dir/src/verify.c.o.d -o CMakeFiles/v4kem.dir/src/verify.c.o -c /Users/mac2/Desktop/project/v4kem_qr/src/verify.c

CMakeFiles/v4kem.dir/src/verify.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/v4kem.dir/src/verify.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/mac2/Desktop/project/v4kem_qr/src/verify.c > CMakeFiles/v4kem.dir/src/verify.c.i

CMakeFiles/v4kem.dir/src/verify.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/v4kem.dir/src/verify.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/mac2/Desktop/project/v4kem_qr/src/verify.c -o CMakeFiles/v4kem.dir/src/verify.c.s

CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.o: CMakeFiles/v4kem.dir/flags.make
CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.o: /Users/mac2/Desktop/project/v4kem_qr/wrapper/mlkem_compat.c
CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.o: CMakeFiles/v4kem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.o -MF CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.o.d -o CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.o -c /Users/mac2/Desktop/project/v4kem_qr/wrapper/mlkem_compat.c

CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/mac2/Desktop/project/v4kem_qr/wrapper/mlkem_compat.c > CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.i

CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/mac2/Desktop/project/v4kem_qr/wrapper/mlkem_compat.c -o CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.s

# Object files for target v4kem
v4kem_OBJECTS = \
"CMakeFiles/v4kem.dir/src/v4kem.c.o" \
"CMakeFiles/v4kem.dir/src/mlwe.c.o" \
"CMakeFiles/v4kem.dir/src/puf.c.o" \
"CMakeFiles/v4kem.dir/src/sram_puf.c.o" \
"CMakeFiles/v4kem.dir/src/sha3.c.o" \
"CMakeFiles/v4kem.dir/src/randombytes.c.o" \
"CMakeFiles/v4kem.dir/src/kdf.c.o" \
"CMakeFiles/v4kem.dir/src/verify.c.o" \
"CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.o"

# External object files for target v4kem
v4kem_EXTERNAL_OBJECTS =

libv4kem.a: CMakeFiles/v4kem.dir/src/v4kem.c.o
libv4kem.a: CMakeFiles/v4kem.dir/src/mlwe.c.o
libv4kem.a: CMakeFiles/v4kem.dir/src/puf.c.o
libv4kem.a: CMakeFiles/v4kem.dir/src/sram_puf.c.o
libv4kem.a: CMakeFiles/v4kem.dir/src/sha3.c.o
libv4kem.a: CMakeFiles/v4kem.dir/src/randombytes.c.o
libv4kem.a: CMakeFiles/v4kem.dir/src/kdf.c.o
libv4kem.a: CMakeFiles/v4kem.dir/src/verify.c.o
libv4kem.a: CMakeFiles/v4kem.dir/wrapper/mlkem_compat.c.o
libv4kem.a: CMakeFiles/v4kem.dir/build.make
libv4kem.a: CMakeFiles/v4kem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C static library libv4kem.a"
	$(CMAKE_COMMAND) -P CMakeFiles/v4kem.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/v4kem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/v4kem.dir/build: libv4kem.a
.PHONY : CMakeFiles/v4kem.dir/build

CMakeFiles/v4kem.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/v4kem.dir/cmake_clean.cmake
.PHONY : CMakeFiles/v4kem.dir/clean

CMakeFiles/v4kem.dir/depend:
	cd /Users/mac2/Desktop/project/v4kem_qr/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac2/Desktop/project/v4kem_qr /Users/mac2/Desktop/project/v4kem_qr /Users/mac2/Desktop/project/v4kem_qr/build /Users/mac2/Desktop/project/v4kem_qr/build /Users/mac2/Desktop/project/v4kem_qr/build/CMakeFiles/v4kem.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/v4kem.dir/depend

