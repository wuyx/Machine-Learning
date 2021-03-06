#pragma once

#include <iostream>
#include <opencv2/opencv.hpp>

#include "ImageTansform.h"
#include "FaceLandmarkNet.h"

class TrainerInferrer {

    public:

        void testShow(int count, int resizeFactor, const torch::Tensor &imgTensor, const torch::Tensor &labelTensor);
        void testSave(int count, int rescaleFactor, const torch::Tensor &imgTensor, const torch::Tensor &labelTensor, char* outputName);
        void writeCSV(int count, torch::Tensor const &labelTensor);

        void overlapOuputsOnCVMat(cv::Mat cvMat, const at::Tensor &labelTensor);

        void inferStereoToCSV
        (
            FaceLandmarkNet fln, 
            //cv::Mat leftImg, cv::Mat rightImg, 
            const at::Tensor &leftImageTensor, const at::Tensor &rightImageTensor, 
            torch::Device device
        );

        std::tuple<cv::Mat, cv::Mat> inferStereo
        (
            FaceLandmarkNet fln, 
            const cv::Mat &leftImg, const cv::Mat &rightImg,
            //const at::Tensor &leftImageTensor, const at::Tensor &rightImageTensor, 
            torch::Device device
        );

        void inferMono(FaceLandmarkNet fln, const at::Tensor &imageTensor, torch::Device device, int imgCount);
};