# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3

# Include any dependencies generated for this target.
include CMakeFiles/assignment_3_task3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/assignment_3_task3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/assignment_3_task3.dir/flags.make

CMakeFiles/assignment_3_task3.dir/main.cpp.o: CMakeFiles/assignment_3_task3.dir/flags.make
CMakeFiles/assignment_3_task3.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/assignment_3_task3.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/assignment_3_task3.dir/main.cpp.o -c /mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3/main.cpp

CMakeFiles/assignment_3_task3.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment_3_task3.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3/main.cpp > CMakeFiles/assignment_3_task3.dir/main.cpp.i

CMakeFiles/assignment_3_task3.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment_3_task3.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3/main.cpp -o CMakeFiles/assignment_3_task3.dir/main.cpp.s

CMakeFiles/assignment_3_task3.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/assignment_3_task3.dir/main.cpp.o.requires

CMakeFiles/assignment_3_task3.dir/main.cpp.o.provides: CMakeFiles/assignment_3_task3.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/assignment_3_task3.dir/build.make CMakeFiles/assignment_3_task3.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/assignment_3_task3.dir/main.cpp.o.provides

CMakeFiles/assignment_3_task3.dir/main.cpp.o.provides.build: CMakeFiles/assignment_3_task3.dir/main.cpp.o


# Object files for target assignment_3_task3
assignment_3_task3_OBJECTS = \
"CMakeFiles/assignment_3_task3.dir/main.cpp.o"

# External object files for target assignment_3_task3
assignment_3_task3_EXTERNAL_OBJECTS =

assignment_3_task3: CMakeFiles/assignment_3_task3.dir/main.cpp.o
assignment_3_task3: CMakeFiles/assignment_3_task3.dir/build.make
assignment_3_task3: /usr/local/lib/libopencv_dnn.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_gapi.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_highgui.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_ml.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_objdetect.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_photo.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_stitching.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_video.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_videoio.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_imgcodecs.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_calib3d.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_features2d.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_flann.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_imgproc.so.4.1.2
assignment_3_task3: /usr/local/lib/libopencv_core.so.4.1.2
assignment_3_task3: CMakeFiles/assignment_3_task3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable assignment_3_task3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assignment_3_task3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/assignment_3_task3.dir/build: assignment_3_task3

.PHONY : CMakeFiles/assignment_3_task3.dir/build

CMakeFiles/assignment_3_task3.dir/requires: CMakeFiles/assignment_3_task3.dir/main.cpp.o.requires

.PHONY : CMakeFiles/assignment_3_task3.dir/requires

CMakeFiles/assignment_3_task3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/assignment_3_task3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/assignment_3_task3.dir/clean

CMakeFiles/assignment_3_task3.dir/depend:
	cd /mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3 /mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3 /mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3 /mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3 /mnt/c/Users/Matthew/Documents/FHICT/6VIS/src/assignment3_task3/CMakeFiles/assignment_3_task3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/assignment_3_task3.dir/depend

