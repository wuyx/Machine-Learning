# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/build

# Include any dependencies generated for this target.
include CMakeFiles/FaceLandmarkDetector.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/FaceLandmarkDetector.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FaceLandmarkDetector.dir/flags.make

CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.o: CMakeFiles/FaceLandmarkDetector.dir/flags.make
CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.o: ../src/FaceLandmarkDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.o -c /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/FaceLandmarkDetector.cpp

CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/FaceLandmarkDetector.cpp > CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.i

CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/FaceLandmarkDetector.cpp -o CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.s

CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.o: CMakeFiles/FaceLandmarkDetector.dir/flags.make
CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.o: ../src/ImageDataLoader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.o -c /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/ImageDataLoader.cpp

CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/ImageDataLoader.cpp > CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.i

CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/ImageDataLoader.cpp -o CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.s

CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.o: CMakeFiles/FaceLandmarkDetector.dir/flags.make
CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.o: ../src/MainDelegate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.o -c /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/MainDelegate.cpp

CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/MainDelegate.cpp > CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.i

CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/MainDelegate.cpp -o CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.s

CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.o: CMakeFiles/FaceLandmarkDetector.dir/flags.make
CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.o -c /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/main.cpp

CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/main.cpp > CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.i

CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/src/main.cpp -o CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.s

# Object files for target FaceLandmarkDetector
FaceLandmarkDetector_OBJECTS = \
"CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.o" \
"CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.o" \
"CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.o" \
"CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.o"

# External object files for target FaceLandmarkDetector
FaceLandmarkDetector_EXTERNAL_OBJECTS =

FaceLandmarkDetector: CMakeFiles/FaceLandmarkDetector.dir/src/FaceLandmarkDetector.cpp.o
FaceLandmarkDetector: CMakeFiles/FaceLandmarkDetector.dir/src/ImageDataLoader.cpp.o
FaceLandmarkDetector: CMakeFiles/FaceLandmarkDetector.dir/src/MainDelegate.cpp.o
FaceLandmarkDetector: CMakeFiles/FaceLandmarkDetector.dir/src/main.cpp.o
FaceLandmarkDetector: CMakeFiles/FaceLandmarkDetector.dir/build.make
FaceLandmarkDetector: /usr/local/lib/python3.6/dist-packages/torch/lib/libtorch.so
FaceLandmarkDetector: /usr/local/lib/python3.6/dist-packages/torch/lib/libc10.so
FaceLandmarkDetector: /usr/lib/x86_64-linux-gnu/libcuda.so
FaceLandmarkDetector: /usr/local/cuda/lib64/libnvrtc.so
FaceLandmarkDetector: /usr/local/cuda/lib64/libnvToolsExt.so
FaceLandmarkDetector: /usr/local/cuda/lib64/libcudart.so
FaceLandmarkDetector: /usr/local/lib/python3.6/dist-packages/torch/lib/libc10_cuda.so
FaceLandmarkDetector: /usr/local/lib/python3.6/dist-packages/torch/lib/libc10_cuda.so
FaceLandmarkDetector: /usr/local/lib/python3.6/dist-packages/torch/lib/libcaffe2.so
FaceLandmarkDetector: /usr/local/lib/python3.6/dist-packages/torch/lib/libc10.so
FaceLandmarkDetector: /usr/local/cuda/lib64/libcufft.so
FaceLandmarkDetector: /usr/local/cuda/lib64/libcurand.so
FaceLandmarkDetector: /usr/local/cuda/lib64/libcudnn.so
FaceLandmarkDetector: /usr/local/cuda/lib64/libculibos.a
FaceLandmarkDetector: /usr/local/cuda/lib64/libculibos.a
FaceLandmarkDetector: /usr/local/cuda/lib64/libcublas.so
FaceLandmarkDetector: /usr/local/cuda/lib64/libcudart.so
FaceLandmarkDetector: CMakeFiles/FaceLandmarkDetector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable FaceLandmarkDetector"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FaceLandmarkDetector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FaceLandmarkDetector.dir/build: FaceLandmarkDetector

.PHONY : CMakeFiles/FaceLandmarkDetector.dir/build

CMakeFiles/FaceLandmarkDetector.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FaceLandmarkDetector.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FaceLandmarkDetector.dir/clean

CMakeFiles/FaceLandmarkDetector.dir/depend:
	cd /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/build /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/build /DEVs/Machine-Learning/PyTorch/FaceLandmarkDetector/build/CMakeFiles/FaceLandmarkDetector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FaceLandmarkDetector.dir/depend
