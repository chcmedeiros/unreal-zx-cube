# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/carlosmedeiros/repo/cube/Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/carlosmedeiros/repo/cube/Project/cmake-build-debug

# Utility rule file for ProjectEditor.

# Include any custom commands dependencies for this target.
include CMakeFiles/ProjectEditor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ProjectEditor.dir/progress.make

CMakeFiles/ProjectEditor:
	cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" ProjectEditor Mac Development -project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject -game -progress -buildscw

ProjectEditor: CMakeFiles/ProjectEditor
ProjectEditor: CMakeFiles/ProjectEditor.dir/build.make
.PHONY : ProjectEditor

# Rule to build all files generated by this target.
CMakeFiles/ProjectEditor.dir/build: ProjectEditor
.PHONY : CMakeFiles/ProjectEditor.dir/build

CMakeFiles/ProjectEditor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ProjectEditor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ProjectEditor.dir/clean

CMakeFiles/ProjectEditor.dir/depend:
	cd /Users/carlosmedeiros/repo/cube/Project/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/carlosmedeiros/repo/cube/Project /Users/carlosmedeiros/repo/cube/Project /Users/carlosmedeiros/repo/cube/Project/cmake-build-debug /Users/carlosmedeiros/repo/cube/Project/cmake-build-debug /Users/carlosmedeiros/repo/cube/Project/cmake-build-debug/CMakeFiles/ProjectEditor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ProjectEditor.dir/depend

