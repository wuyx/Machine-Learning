#ifndef __IMAGE_TRANSFORM_H__
#define __IMAGE_TRANSFORM_H__

#include <iostream>
#include <opencv2/core.hpp>
#include <opencv2/imgproc/imgproc.hpp> // resize
//k#include <typeinfo>
//#include <tuple>
//#include <vector>

class Rescale {
    private:
        int _outputSizeInt;
        std::tuple<int, int> _outputSizeTuple;
        std::tuple<cv::Mat, std::vector<float>> _resizedData;

        int _newW, _newH;

        const std::type_info &_typeId;
    
    public:
        // GETTERs
        std::tuple<cv::Mat, std::vector<float>> getResizedData(){return _resizedData;};

        // METHODs
        Rescale(int outputSize): _outputSizeInt(outputSize), _typeId(typeid(int)) {
            if (typeid(outputSize) != typeid(int)){
                std::fprintf(stderr, "Rescale ERROR: data type of output size is incorrect.\n");
                exit(-1);
            }

            //std::fprintf(stdout, "outputSizeInt: %d\n", _outputSizeInt);
        };

        Rescale(std::tuple<int, int> outputSize): _outputSizeTuple(outputSize), _typeId(typeid(std::tuple<int, int>)) {
            if (typeid(outputSize) != typeid(std::tuple<int, int>)) {
                std::fprintf(stderr, "Rescale ERROR: data type of output size is incorrect.\n");
                exit(-1);
            }

            auto [A, B] = _outputSizeTuple;
            //std::fprintf(stdout, "outputSizeTuple: %d, %d\n", A, B);
        };

        Rescale operator() (cv::Mat const& image, std::vector<int> const &landmarks) {
            int w = image.rows;
            int h = image.cols;
            
            //std::cout << image.size << std::endl;
            //std::fprintf(stdout, "W: %d, H: %d\n", w, h);

            if (_typeId == typeid(int)) {
                if (h > w) {
                    //std::cout << "W<H" << std::endl;
                    //_newH =  (int)_outputSizeInt * h/(float)w;
                    _newH =  _outputSizeInt * h/w;
                    _newW = _outputSizeInt;
                }
                else {
                    //std::cout << "W>H" << std::endl;
                    _newH = _outputSizeInt;
                    //_newW =  (int)_outputSizeInt * w/(float)h;
                    _newW =  _outputSizeInt * w/h;
                }
            }
            else {
                auto [newW, newH] = _outputSizeTuple;
                _newW = newW;
                _newH = newH;
            }

            
            cv::Mat resizedImage;
            std::vector<float> resizedLabel;

            // Rescale the image
            cv::resize(image, resizedImage, cv::Size2d(_newH, _newW), 0, 0, cv::INTER_LINEAR);

            // Rescale the labels
            int coord = 0;
            for (auto landmark: landmarks) {
                if (++coord % 2 == 1) resizedLabel.push_back(landmark * _newH/h);
                else resizedLabel.push_back(landmark * _newW/w);
            }
            //std::fprintf(stdout, "newW: %d, newH: %d\n", _newW, _newH);

            std::cout << resizedImage.size << std::endl;

            for (auto landmark: resizedLabel) {
                std::cout << landmark << ", ";
            }
            std::cout << std::endl;

            _resizedData = std::make_tuple(resizedImage, resizedLabel); // data to be returned

            return *this;
        }
};

#endif // __IMAGE_TRANSFORM_H__