# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chenbiao/code/std_move

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chenbiao/code/std_move/build

# Include any dependencies generated for this target.
include CMakeFiles/std_move.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/std_move.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/std_move.dir/flags.make

CMakeFiles/std_move.dir/src/std_move.cpp.o: CMakeFiles/std_move.dir/flags.make
CMakeFiles/std_move.dir/src/std_move.cpp.o: ../src/std_move.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chenbiao/code/std_move/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/std_move.dir/src/std_move.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/std_move.dir/src/std_move.cpp.o -c /home/chenbiao/code/std_move/src/std_move.cpp

CMakeFiles/std_move.dir/src/std_move.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/std_move.dir/src/std_move.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chenbiao/code/std_move/src/std_move.cpp > CMakeFiles/std_move.dir/src/std_move.cpp.i

CMakeFiles/std_move.dir/src/std_move.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/std_move.dir/src/std_move.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chenbiao/code/std_move/src/std_move.cpp -o CMakeFiles/std_move.dir/src/std_move.cpp.s

CMakeFiles/std_move.dir/src/std_move.cpp.o.requires:

.PHONY : CMakeFiles/std_move.dir/src/std_move.cpp.o.requires

CMakeFiles/std_move.dir/src/std_move.cpp.o.provides: CMakeFiles/std_move.dir/src/std_move.cpp.o.requires
	$(MAKE) -f CMakeFiles/std_move.dir/build.make CMakeFiles/std_move.dir/src/std_move.cpp.o.provides.build
.PHONY : CMakeFiles/std_move.dir/src/std_move.cpp.o.provides

CMakeFiles/std_move.dir/src/std_move.cpp.o.provides.build: CMakeFiles/std_move.dir/src/std_move.cpp.o


# Object files for target std_move
std_move_OBJECTS = \
"CMakeFiles/std_move.dir/src/std_move.cpp.o"

# External object files for target std_move
std_move_EXTERNAL_OBJECTS =

std_move: CMakeFiles/std_move.dir/src/std_move.cpp.o
std_move: CMakeFiles/std_move.dir/build.make
std_move: CMakeFiles/std_move.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chenbiao/code/std_move/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable std_move"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/std_move.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/std_move.dir/build: std_move

.PHONY : CMakeFiles/std_move.dir/build

CMakeFiles/std_move.dir/requires: CMakeFiles/std_move.dir/src/std_move.cpp.o.requires

.PHONY : CMakeFiles/std_move.dir/requires

CMakeFiles/std_move.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/std_move.dir/cmake_clean.cmake
.PHONY : CMakeFiles/std_move.dir/clean

CMakeFiles/std_move.dir/depend:
	cd /home/chenbiao/code/std_move/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chenbiao/code/std_move /home/chenbiao/code/std_move /home/chenbiao/code/std_move/build /home/chenbiao/code/std_move/build /home/chenbiao/code/std_move/build/CMakeFiles/std_move.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/std_move.dir/depend

