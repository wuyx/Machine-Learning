#ifndef __IMAGE_DATA_LOADER_H__
#define __IMAGE_DATA_LOADER_H__


#include <iostream>
#include <fstream>
#include <experimental/filesystem>
#include <vector>
#include <tuple>
#include <list>
#include <regex>
#include <string>

#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include "opencv2/imgproc/imgproc.hpp"

namespace filesystem = std::experimental::filesystem;

class DataLoader {
    private:
        // Private Variables
        std::vector<std::tuple<std::string, std::string>> _dataset;     // Return dataset vector (image, label) string
        
        cv::Mat _image;
        std::list<float> _labels;

        bool resizeFlag;

        // Private Methods
        void readDataDirectory(std::string rootPath);                                                   // recursively read files from root folder
        //void labelStr2Float(std::tuple<std::string, std::string> filePath, bool norm = true); // Convert string of label to float
        std::tuple<float, float> str2Float(std::string strLabel);
        float resizeLabel(float origLabel, int origSize, int scaleFactor);

        cv::Mat readImage2CVMat(std::string filePath, bool resize, bool norm=true);              // Read an image data into cv::Mat
        cv::Mat resizeCVMat(cv::Mat &cvImg, int factorX, int factorY);
        std::tuple<float, float> labelNormalizer(int col, int row, float X, float Y); // MinMax normalize for label data
    public:
        // Getter
        std::vector<std::tuple<std::string, std::string>> getDataset(){return _dataset;};
        cv::Mat getImage(){return _image;};
        std::list<float> getLabels(){return _labels;};

        // Public Methods
        DataLoader(std::string path);                                               // Constructor, string arguments
        std::tuple<cv::Mat, std::list<float>> loadOneTraninImageAndLabel(std::tuple<std::string, std::string> filePath, bool norm=true, int scaleFactor=0.5);
};

#endif // __IMAGE_DATA_LOADER_H__s