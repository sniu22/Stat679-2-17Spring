# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Lament/Desktop/STAT679_2/hw8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Lament/Desktop/STAT679_2/hw8/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/hw8.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hw8.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw8.dir/flags.make

CMakeFiles/hw8.dir/main.cpp.o: CMakeFiles/hw8.dir/flags.make
CMakeFiles/hw8.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Lament/Desktop/STAT679_2/hw8/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hw8.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hw8.dir/main.cpp.o -c /Users/Lament/Desktop/STAT679_2/hw8/main.cpp

CMakeFiles/hw8.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw8.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Lament/Desktop/STAT679_2/hw8/main.cpp > CMakeFiles/hw8.dir/main.cpp.i

CMakeFiles/hw8.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw8.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Lament/Desktop/STAT679_2/hw8/main.cpp -o CMakeFiles/hw8.dir/main.cpp.s

CMakeFiles/hw8.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/hw8.dir/main.cpp.o.requires

CMakeFiles/hw8.dir/main.cpp.o.provides: CMakeFiles/hw8.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/hw8.dir/build.make CMakeFiles/hw8.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/hw8.dir/main.cpp.o.provides

CMakeFiles/hw8.dir/main.cpp.o.provides.build: CMakeFiles/hw8.dir/main.cpp.o


# Object files for target hw8
hw8_OBJECTS = \
"CMakeFiles/hw8.dir/main.cpp.o"

# External object files for target hw8
hw8_EXTERNAL_OBJECTS =

hw8: CMakeFiles/hw8.dir/main.cpp.o
hw8: CMakeFiles/hw8.dir/build.make
hw8: CMakeFiles/hw8.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Lament/Desktop/STAT679_2/hw8/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hw8"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw8.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw8.dir/build: hw8

.PHONY : CMakeFiles/hw8.dir/build

CMakeFiles/hw8.dir/requires: CMakeFiles/hw8.dir/main.cpp.o.requires

.PHONY : CMakeFiles/hw8.dir/requires

CMakeFiles/hw8.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw8.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw8.dir/clean

CMakeFiles/hw8.dir/depend:
	cd /Users/Lament/Desktop/STAT679_2/hw8/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Lament/Desktop/STAT679_2/hw8 /Users/Lament/Desktop/STAT679_2/hw8 /Users/Lament/Desktop/STAT679_2/hw8/cmake-build-debug /Users/Lament/Desktop/STAT679_2/hw8/cmake-build-debug /Users/Lament/Desktop/STAT679_2/hw8/cmake-build-debug/CMakeFiles/hw8.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw8.dir/depend

