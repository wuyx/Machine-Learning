//
//  commonHeader.h
//  FaceWrangling
//
//  Created by 170 on 2018/05/10.
//  Copyright © 2018 170. All rights reserved.
//

#ifndef commonHeader_h
#define commonHeader_h

//#include <iostream>
#include <fstream>
#include <iterator>
#include <cstdarg> // take a variable number of arguments

// For data container
#include <vector>
//#include <tuple>
#include "boost/tuple/tuple.hpp"

#include <boost/filesystem.hpp>
#include <boost/bind.hpp>

/*** OpenCV Headers ***/
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

/*** Dlib Headers ***/
#include <dlib/opencv.h>
#include <dlib/image_processing/frontal_face_detector.h>
#include <dlib/image_processing/render_face_detections.h>
#include <dlib/image_processing.h>

/*** Unit Test ***/
//#define BOOST_TEST_MODULE FaceDataWranglingUnitTest
//#include <boost/test/unit_test.hpp>

#endif /* commonHeader_h */
