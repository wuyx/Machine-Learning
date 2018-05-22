import cv2
import numpy as np
from pickle_helper import PickleHelper
from image_helper import ImgFunctions

img = ImgFunctions.read_img_with_abs_path("star_wars.jpg")
print(img.shape)

def cut_down_to_windows(img, kernel):
    (iH, iW) = img.shape[:2]
    (kH, kW) = kernel.shape[:2]

    print(iH, iW, kH, kW)
    # allocate memory for the output image, taking care to
    # "pad" the borders of the input image so the spatial
    # size (i.e., width and height) are not reduced
    
    pad = int((kW - 1) / 2)
    print(pad)
    image = cv2.copyMakeBorder(img, pad, pad, pad, pad,
		               cv2.BORDER_CONSTANT,value=[255,0,0])

    print(image.shape)
    output = np.zeros((iH, iW), dtype="float32")

cut_down_to_windows(img, np.ones([33, 33, 3]))

#https://www.pyimagesearch.com/2016/07/25/convolutions-with-opencv-and-python/
