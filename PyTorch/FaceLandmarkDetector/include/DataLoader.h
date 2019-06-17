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

namespace filesystem = std::experimental::filesystem;

class DataLoader {
    private:
        // Private Variables
        std::vector<std::tuple<std::string, std::string>> _dataset;     // Return dataset vector (image, label) string

        cv::Mat _image;
        std::list<double> _labels;

        // Private Methods
        void readDataDirectory(std::string rootPath);                                                   // recursively read files from root folder
        void labelStr2Double(std::tuple<std::string, std::string> filePath, bool norm = true); // Convert string of label to double
        
        cv::Mat readImage2CVMat(std::string filePath, bool norm=true);              // Read an image data into cv::Mat
        std::tuple<double, double> labelNormalizer(int col, int row, double X, double Y); // MinMax normalize for label data
    public:
        // Getter
        std::vector<std::tuple<std::string, std::string>> getDataset(){return _dataset;};
        cv::Mat getImage(){return _image;};
        std::list<double> getLabels(){return _labels;};

        // Public Methods
        DataLoader(std::string path);                                               // Constructor, string arguments
        std::tuple<cv::Mat, std::list<double>> loadOneTraninImageAndLabel(std::tuple<std::string, std::string> filePath, bool norm=true);
};

#endif // __IMAGE_DATA_LOADER_H__s