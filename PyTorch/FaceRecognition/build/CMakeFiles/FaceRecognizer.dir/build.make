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
CMAKE_SOURCE_DIR = /DEVs/Machine-Learning/PyTorch/FaceRecognition

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /DEVs/Machine-Learning/PyTorch/FaceRecognition/build

# Include any dependencies generated for this target.
include CMakeFiles/FaceRecognizer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/FaceRecognizer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FaceRecognizer.dir/flags.make

CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.o: CMakeFiles/FaceRecognizer.dir/flags.make
CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.o: ../src/FaceLandmarkNet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/DEVs/Machine-Learning/PyTorch/FaceRecognition/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.o -c /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/FaceLandmarkNet.cpp

CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/FaceLandmarkNet.cpp > CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.i

CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/FaceLandmarkNet.cpp -o CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.s

CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.o: CMakeFiles/FaceRecognizer.dir/flags.make
CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.o: ../src/FaceRecognizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/DEVs/Machine-Learning/PyTorch/FaceRecognition/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.o -c /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/FaceRecognizer.cpp

CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/FaceRecognizer.cpp > CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.i

CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/FaceRecognizer.cpp -o CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.s

CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.o: CMakeFiles/FaceRecognizer.dir/flags.make
CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.o: ../src/MainDelegate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/DEVs/Machine-Learning/PyTorch/FaceRecognition/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.o -c /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/MainDelegate.cpp

CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/MainDelegate.cpp > CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.i

CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/MainDelegate.cpp -o CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.s

CMakeFiles/FaceRecognizer.dir/src/main.cpp.o: CMakeFiles/FaceRecognizer.dir/flags.make
CMakeFiles/FaceRecognizer.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/DEVs/Machine-Learning/PyTorch/FaceRecognition/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/FaceRecognizer.dir/src/main.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceRecognizer.dir/src/main.cpp.o -c /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/main.cpp

CMakeFiles/FaceRecognizer.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceRecognizer.dir/src/main.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/main.cpp > CMakeFiles/FaceRecognizer.dir/src/main.cpp.i

CMakeFiles/FaceRecognizer.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceRecognizer.dir/src/main.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /DEVs/Machine-Learning/PyTorch/FaceRecognition/src/main.cpp -o CMakeFiles/FaceRecognizer.dir/src/main.cpp.s

# Object files for target FaceRecognizer
FaceRecognizer_OBJECTS = \
"CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.o" \
"CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.o" \
"CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.o" \
"CMakeFiles/FaceRecognizer.dir/src/main.cpp.o"

# External object files for target FaceRecognizer
FaceRecognizer_EXTERNAL_OBJECTS =

FaceRecognizer: CMakeFiles/FaceRecognizer.dir/src/FaceLandmarkNet.cpp.o
FaceRecognizer: CMakeFiles/FaceRecognizer.dir/src/FaceRecognizer.cpp.o
FaceRecognizer: CMakeFiles/FaceRecognizer.dir/src/MainDelegate.cpp.o
FaceRecognizer: CMakeFiles/FaceRecognizer.dir/src/main.cpp.o
FaceRecognizer: CMakeFiles/FaceRecognizer.dir/build.make
FaceRecognizer: /usr/local/lib/python3.6/dist-packages/torch/lib/libtorch.so
FaceRecognizer: /usr/local/lib/python3.6/dist-packages/torch/lib/libc10.so
FaceRecognizer: /usr/lib/x86_64-linux-gnu/libcuda.so
FaceRecognizer: /usr/local/cuda/lib64/libnvrtc.so
FaceRecognizer: /usr/local/cuda/lib64/libnvToolsExt.so
FaceRecognizer: /usr/local/cuda/lib64/libcudart.so
FaceRecognizer: /usr/local/lib/python3.6/dist-packages/torch/lib/libc10_cuda.so
FaceRecognizer: /usr/local/lib/libopencv_cudabgsegm.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_cudaobjdetect.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_cudastereo.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_shape.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_stitching.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_superres.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_videostab.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_aruco.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_bgsegm.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_bioinspired.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_ccalib.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_dpm.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_face.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_freetype.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_fuzzy.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_hfs.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_img_hash.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_line_descriptor.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_optflow.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_reg.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_rgbd.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_saliency.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_stereo.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_structured_light.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_surface_matching.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_tracking.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_ximgproc.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_xobjdetect.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_xphoto.so.3.4.5
FaceRecognizer: /usr/local/lib/python3.6/dist-packages/torch/lib/libc10_cuda.so
FaceRecognizer: /usr/local/lib/python3.6/dist-packages/torch/lib/libcaffe2.so
FaceRecognizer: /usr/local/lib/python3.6/dist-packages/torch/lib/libc10.so
FaceRecognizer: /usr/local/cuda/lib64/libcufft.so
FaceRecognizer: /usr/local/cuda/lib64/libcurand.so
FaceRecognizer: /usr/local/cuda/lib64/libcudnn.so
FaceRecognizer: /usr/local/cuda/lib64/libculibos.a
FaceRecognizer: /usr/local/cuda/lib64/libculibos.a
FaceRecognizer: /usr/local/cuda/lib64/libcublas.so
FaceRecognizer: /usr/local/cuda/lib64/libcudart.so
FaceRecognizer: /usr/local/lib/libopencv_cudafeatures2d.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_cudacodec.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_cudaoptflow.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_cudalegacy.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_cudawarping.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_video.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_datasets.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_plot.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_text.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_dnn.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_ml.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_objdetect.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_calib3d.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_features2d.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_flann.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_highgui.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_videoio.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_imgcodecs.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_photo.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_cudaimgproc.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_cudafilters.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_cudaarithm.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_imgproc.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_core.so.3.4.5
FaceRecognizer: /usr/local/lib/libopencv_cudev.so.3.4.5
FaceRecognizer: CMakeFiles/FaceRecognizer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/DEVs/Machine-Learning/PyTorch/FaceRecognition/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable FaceRecognizer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FaceRecognizer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FaceRecognizer.dir/build: FaceRecognizer

.PHONY : CMakeFiles/FaceRecognizer.dir/build

CMakeFiles/FaceRecognizer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FaceRecognizer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FaceRecognizer.dir/clean

CMakeFiles/FaceRecognizer.dir/depend:
	cd /DEVs/Machine-Learning/PyTorch/FaceRecognition/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /DEVs/Machine-Learning/PyTorch/FaceRecognition /DEVs/Machine-Learning/PyTorch/FaceRecognition /DEVs/Machine-Learning/PyTorch/FaceRecognition/build /DEVs/Machine-Learning/PyTorch/FaceRecognition/build /DEVs/Machine-Learning/PyTorch/FaceRecognition/build/CMakeFiles/FaceRecognizer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FaceRecognizer.dir/depend
