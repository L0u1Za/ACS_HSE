# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/l0u1za/ACS_HSE/hw5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/l0u1za/ACS_HSE/hw5/build

# Include any dependencies generated for this target.
include CMakeFiles/HomeWork5.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/HomeWork5.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/HomeWork5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HomeWork5.dir/flags.make

CMakeFiles/HomeWork5.dir/main.cpp.o: CMakeFiles/HomeWork5.dir/flags.make
CMakeFiles/HomeWork5.dir/main.cpp.o: ../main.cpp
CMakeFiles/HomeWork5.dir/main.cpp.o: CMakeFiles/HomeWork5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/l0u1za/ACS_HSE/hw5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HomeWork5.dir/main.cpp.o"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HomeWork5.dir/main.cpp.o -MF CMakeFiles/HomeWork5.dir/main.cpp.o.d -o CMakeFiles/HomeWork5.dir/main.cpp.o -c /home/l0u1za/ACS_HSE/hw5/main.cpp

CMakeFiles/HomeWork5.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HomeWork5.dir/main.cpp.i"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/l0u1za/ACS_HSE/hw5/main.cpp > CMakeFiles/HomeWork5.dir/main.cpp.i

CMakeFiles/HomeWork5.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HomeWork5.dir/main.cpp.s"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/l0u1za/ACS_HSE/hw5/main.cpp -o CMakeFiles/HomeWork5.dir/main.cpp.s

# Object files for target HomeWork5
HomeWork5_OBJECTS = \
"CMakeFiles/HomeWork5.dir/main.cpp.o"

# External object files for target HomeWork5
HomeWork5_EXTERNAL_OBJECTS =

../bin/HomeWork5: CMakeFiles/HomeWork5.dir/main.cpp.o
../bin/HomeWork5: CMakeFiles/HomeWork5.dir/build.make
../bin/HomeWork5: CMakeFiles/HomeWork5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/l0u1za/ACS_HSE/hw5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/HomeWork5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HomeWork5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HomeWork5.dir/build: ../bin/HomeWork5
.PHONY : CMakeFiles/HomeWork5.dir/build

CMakeFiles/HomeWork5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HomeWork5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HomeWork5.dir/clean

CMakeFiles/HomeWork5.dir/depend:
	cd /home/l0u1za/ACS_HSE/hw5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/l0u1za/ACS_HSE/hw5 /home/l0u1za/ACS_HSE/hw5 /home/l0u1za/ACS_HSE/hw5/build /home/l0u1za/ACS_HSE/hw5/build /home/l0u1za/ACS_HSE/hw5/build/CMakeFiles/HomeWork5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HomeWork5.dir/depend

