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
CMAKE_SOURCE_DIR = "/Users/Lament/Desktop/STAT679 2/cplus"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/Lament/Desktop/STAT679 2/cplus/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/clus.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/clus.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/clus.dir/flags.make

CMakeFiles/clus.dir/postfix.cxx.o: CMakeFiles/clus.dir/flags.make
CMakeFiles/clus.dir/postfix.cxx.o: ../postfix.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/Lament/Desktop/STAT679 2/cplus/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/clus.dir/postfix.cxx.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clus.dir/postfix.cxx.o -c "/Users/Lament/Desktop/STAT679 2/cplus/postfix.cxx"

CMakeFiles/clus.dir/postfix.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clus.dir/postfix.cxx.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/Lament/Desktop/STAT679 2/cplus/postfix.cxx" > CMakeFiles/clus.dir/postfix.cxx.i

CMakeFiles/clus.dir/postfix.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clus.dir/postfix.cxx.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/Lament/Desktop/STAT679 2/cplus/postfix.cxx" -o CMakeFiles/clus.dir/postfix.cxx.s

CMakeFiles/clus.dir/postfix.cxx.o.requires:

.PHONY : CMakeFiles/clus.dir/postfix.cxx.o.requires

CMakeFiles/clus.dir/postfix.cxx.o.provides: CMakeFiles/clus.dir/postfix.cxx.o.requires
	$(MAKE) -f CMakeFiles/clus.dir/build.make CMakeFiles/clus.dir/postfix.cxx.o.provides.build
.PHONY : CMakeFiles/clus.dir/postfix.cxx.o.provides

CMakeFiles/clus.dir/postfix.cxx.o.provides.build: CMakeFiles/clus.dir/postfix.cxx.o


CMakeFiles/clus.dir/Stack_int.cxx.o: CMakeFiles/clus.dir/flags.make
CMakeFiles/clus.dir/Stack_int.cxx.o: ../Stack_int.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/Lament/Desktop/STAT679 2/cplus/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/clus.dir/Stack_int.cxx.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clus.dir/Stack_int.cxx.o -c "/Users/Lament/Desktop/STAT679 2/cplus/Stack_int.cxx"

CMakeFiles/clus.dir/Stack_int.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clus.dir/Stack_int.cxx.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/Lament/Desktop/STAT679 2/cplus/Stack_int.cxx" > CMakeFiles/clus.dir/Stack_int.cxx.i

CMakeFiles/clus.dir/Stack_int.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clus.dir/Stack_int.cxx.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/Lament/Desktop/STAT679 2/cplus/Stack_int.cxx" -o CMakeFiles/clus.dir/Stack_int.cxx.s

CMakeFiles/clus.dir/Stack_int.cxx.o.requires:

.PHONY : CMakeFiles/clus.dir/Stack_int.cxx.o.requires

CMakeFiles/clus.dir/Stack_int.cxx.o.provides: CMakeFiles/clus.dir/Stack_int.cxx.o.requires
	$(MAKE) -f CMakeFiles/clus.dir/build.make CMakeFiles/clus.dir/Stack_int.cxx.o.provides.build
.PHONY : CMakeFiles/clus.dir/Stack_int.cxx.o.provides

CMakeFiles/clus.dir/Stack_int.cxx.o.provides.build: CMakeFiles/clus.dir/Stack_int.cxx.o


# Object files for target clus
clus_OBJECTS = \
"CMakeFiles/clus.dir/postfix.cxx.o" \
"CMakeFiles/clus.dir/Stack_int.cxx.o"

# External object files for target clus
clus_EXTERNAL_OBJECTS =

clus: CMakeFiles/clus.dir/postfix.cxx.o
clus: CMakeFiles/clus.dir/Stack_int.cxx.o
clus: CMakeFiles/clus.dir/build.make
clus: CMakeFiles/clus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/Lament/Desktop/STAT679 2/cplus/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable clus"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/clus.dir/build: clus

.PHONY : CMakeFiles/clus.dir/build

CMakeFiles/clus.dir/requires: CMakeFiles/clus.dir/postfix.cxx.o.requires
CMakeFiles/clus.dir/requires: CMakeFiles/clus.dir/Stack_int.cxx.o.requires

.PHONY : CMakeFiles/clus.dir/requires

CMakeFiles/clus.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/clus.dir/cmake_clean.cmake
.PHONY : CMakeFiles/clus.dir/clean

CMakeFiles/clus.dir/depend:
	cd "/Users/Lament/Desktop/STAT679 2/cplus/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/Lament/Desktop/STAT679 2/cplus" "/Users/Lament/Desktop/STAT679 2/cplus" "/Users/Lament/Desktop/STAT679 2/cplus/cmake-build-debug" "/Users/Lament/Desktop/STAT679 2/cplus/cmake-build-debug" "/Users/Lament/Desktop/STAT679 2/cplus/cmake-build-debug/CMakeFiles/clus.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/clus.dir/depend

