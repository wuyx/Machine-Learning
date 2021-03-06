#pragma once

#include <sl/Camera.hpp>
#include <sl/Core.hpp>

#include <opencv2/opencv.hpp>
//#include <opencv2/highgui.hpp>
#include <chrono>
#include <thread>

class CameraManager {
    private:
        sl::Camera _zed; // For test
        
        sl::InitParameters _init_params; // initial parameter setting
        sl::RuntimeParameters _runtime_parameters; // runtime parameter setting
        
        sl::Mat _slLeftMat; // sl Mat variable
        sl::Mat _slRightMat; // sl Mat variable

        cv::cuda::GpuMat _cvLeftGpuMat; // cv GPU Mat variable
        cv::cuda::GpuMat _cvRightGpuMat; // cv GPU Mat variable

        cv::Mat _cvLeftMat; // cv Mat variable
        cv::Mat _cvRightMat; // cv Mat variable

        int _focalLength;
        float _lfX;
        float _lfY;
        float _lcx;
        float _lcy;

        // ** Class Methods ** //
        void initParams(); // Set configuration parameters
        void runtimeParams(); // Set configuration parameters

        void openCamera(); // open camera

        cv::cuda::GpuMat slMatToCvMatConverterForGPU(sl::Mat &slMat);

    public:
        // ** Constructor and Destructor //
        CameraManager();
        ~CameraManager();

        // ** Getters ** //
        cv::Mat getCVLeftMat() {return _cvLeftMat.clone();};
        cv::Mat getCVRightMat() {return _cvRightMat.clone();};
        int getCameraFocalLength() {return _focalLength;};
        std::tuple<float, float> getLeftFocalLength() {return std::make_tuple(_lfX, _lfY);};
        std::tuple<float, float> getLeftCameraOpticalCentre() {return std::make_tuple(_lcx, _lcy);};

        // ** Class Methods ** //
        void getFramesFromZED();
        void CameraManagerHasLoaded();
        void displayFrames(); // lenseType ["left", "right"]
        void getOneFrameFromZED(); // get one sl frame from zed camera
        //void displayFrames(const cv::Mat &cvMat, std::string cameraPosition); // lenseType ["left", "right"]
};