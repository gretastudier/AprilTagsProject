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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/gretastudier/Desktop/NASA_Internship/apriltags

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build

# Include any dependencies generated for this target.
include example/CMakeFiles/apriltags_demo.dir/depend.make

# Include the progress variables for this target.
include example/CMakeFiles/apriltags_demo.dir/progress.make

# Include the compile flags for this target's objects.
include example/CMakeFiles/apriltags_demo.dir/flags.make

example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o: example/CMakeFiles/apriltags_demo.dir/flags.make
example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o: ../example/apriltags_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o"
	cd /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/example && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o -c /Users/gretastudier/Desktop/NASA_Internship/apriltags/example/apriltags_demo.cpp

example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.i"
	cd /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/example && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gretastudier/Desktop/NASA_Internship/apriltags/example/apriltags_demo.cpp > CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.i

example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.s"
	cd /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/example && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gretastudier/Desktop/NASA_Internship/apriltags/example/apriltags_demo.cpp -o CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.s

example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o.requires:

.PHONY : example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o.requires

example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o.provides: example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o.requires
	$(MAKE) -f example/CMakeFiles/apriltags_demo.dir/build.make example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o.provides.build
.PHONY : example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o.provides

example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o.provides.build: example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o


example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o: example/CMakeFiles/apriltags_demo.dir/flags.make
example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o: ../example/Serial.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o"
	cd /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/example && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/apriltags_demo.dir/Serial.cpp.o -c /Users/gretastudier/Desktop/NASA_Internship/apriltags/example/Serial.cpp

example/CMakeFiles/apriltags_demo.dir/Serial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltags_demo.dir/Serial.cpp.i"
	cd /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/example && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gretastudier/Desktop/NASA_Internship/apriltags/example/Serial.cpp > CMakeFiles/apriltags_demo.dir/Serial.cpp.i

example/CMakeFiles/apriltags_demo.dir/Serial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltags_demo.dir/Serial.cpp.s"
	cd /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/example && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gretastudier/Desktop/NASA_Internship/apriltags/example/Serial.cpp -o CMakeFiles/apriltags_demo.dir/Serial.cpp.s

example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.requires:

.PHONY : example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.requires

example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.provides: example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.requires
	$(MAKE) -f example/CMakeFiles/apriltags_demo.dir/build.make example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.provides.build
.PHONY : example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.provides

example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.provides.build: example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o


# Object files for target apriltags_demo
apriltags_demo_OBJECTS = \
"CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o" \
"CMakeFiles/apriltags_demo.dir/Serial.cpp.o"

# External object files for target apriltags_demo
apriltags_demo_EXTERNAL_OBJECTS =

bin/apriltags_demo: example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o
bin/apriltags_demo: example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o
bin/apriltags_demo: example/CMakeFiles/apriltags_demo.dir/build.make
bin/apriltags_demo: lib/libapriltags.a
bin/apriltags_demo: /opt/local/lib/libopencv_dnn.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_ml.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_objdetect.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_shape.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_stitching.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_superres.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_videostab.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_calib3d.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_features2d.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_flann.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_highgui.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_photo.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_video.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_videoio.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_imgcodecs.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_imgproc.3.3.1.dylib
bin/apriltags_demo: /opt/local/lib/libopencv_core.3.3.1.dylib
bin/apriltags_demo: example/CMakeFiles/apriltags_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/apriltags_demo"
	cd /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/apriltags_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/CMakeFiles/apriltags_demo.dir/build: bin/apriltags_demo

.PHONY : example/CMakeFiles/apriltags_demo.dir/build

example/CMakeFiles/apriltags_demo.dir/requires: example/CMakeFiles/apriltags_demo.dir/apriltags_demo.cpp.o.requires
example/CMakeFiles/apriltags_demo.dir/requires: example/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.requires

.PHONY : example/CMakeFiles/apriltags_demo.dir/requires

example/CMakeFiles/apriltags_demo.dir/clean:
	cd /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/example && $(CMAKE_COMMAND) -P CMakeFiles/apriltags_demo.dir/cmake_clean.cmake
.PHONY : example/CMakeFiles/apriltags_demo.dir/clean

example/CMakeFiles/apriltags_demo.dir/depend:
	cd /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/gretastudier/Desktop/NASA_Internship/apriltags /Users/gretastudier/Desktop/NASA_Internship/apriltags/example /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/example /Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/example/CMakeFiles/apriltags_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/CMakeFiles/apriltags_demo.dir/depend
