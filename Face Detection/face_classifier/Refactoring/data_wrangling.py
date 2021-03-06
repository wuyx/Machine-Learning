import cv2
import numpy as np
import os # for listing files in a directory
import re
from tqdm import tqdm
import pickle

# For one hot encoding
from sklearn.preprocessing import LabelBinarizer
from sklearn.preprocessing import OneHotEncoder

class PickleHelper(object):
    @classmethod
    def validation_check(cls, _path, _name):
        assert (_path or _name is not None), "Error: set corret path and name."
                
        if not _path.endswith("/"):
            return _path + "/"
            
        else:
            return _path
    
    @classmethod
    def save_to_pickle(cls, path = None, name = None, data = None):
        n_bytes = 2**31
        max_bytes = 2**31 - 1
        bytes_out = pickle.dumps(data)
        
        path = cls.validation_check(path, name)

        with open(path+name, "wb") as f:
            for idx in range(0, len(bytes_out), max_bytes):
                print("\t => Save '{0}' to '{1}'".format(name, path))
                f.write(bytes_out[idx:idx+max_bytes])
                #pickle.dump(data, f, protocol=pickle.HIGHEST_PROTOCOL)
        
    @classmethod        
    def load_pickle(cls, path = None, name = None):
        max_bytes = 2**31 - 1
        bytes_in = bytearray(0)
        
        path = cls.validation_check(path, name)
        print(path)
        
        input_size = os.path.getsize(path+name)
        print("input_size: ", input_size)
        print("\t=> Load '{0}' to '{1}'".format(name, path))
        
        with open(path+name, "rb") as f:
            for _ in range(0, input_size, max_bytes):
                bytes_in += f.read(max_bytes)

        data = pickle.loads(bytes_in, encoding='bytes')
        
        return data

class DataWrangling(object):
    # "/Users/pure/Developments/Personal-Study/Machine-Learning/Data/Face-Data/"
    def __init__(self, dir_path):
        self.__dir_path = dir_path

    @property
    def dir_path(self):
        return self.__dir_path

    def img2numpy_array(self, dir_path):
    #def read_dir(self, dir_path):
        rx = re.compile(r"\.(jpg)")
        
        #jpg_list_with_path = []
        #jpg_list_without_path = []
        features = []
        labels = []
        
        for path, dnames, fnames in tqdm(os.walk(dir_path)):
            for img_file in tqdm(fnames):
                if rx.search(img_file):
                    #jpg_list_with_path.extend([os.path.join(path, img_file)]) #jpg_list_with_path.extend([os.path.join(path, x) for x in fnames if rx.search(x)])
                    img_cv = self.read_img_with_abs_path(os.path.join(path, img_file)) 
                    if img_cv is not None:
                        #img_cv = self.bgr2gray(img_cv) # convert color to gray scale
                        img_cv = self.resize_img(img_cv, (32, 32)) # resize the image
                        #img_cv = self.resize_img(img_cv, (224, 224)) # resize the image
                        #img_cv = self.scailing(img_cv, new_min=0, new_max=1) # rescailing
                        #img_cv = self.bgr2rgb(img_cv)
                        #print(np.shape(img_cv), np.min(img_cv), np.max(img_cv))
                        #features.append(img_cv[..., ::-1])
                        features.append(img_cv)
                    #jpg_list_without_path.append(img_file[:-9])
                    labels.append(img_file[:-9])

        #print(np.shape(features), np.shape(labels))
        return np.array(features), np.array(labels)
        
    def read_img_with_abs_path(self, abs_file_name, channel = 0):
        ## read image
        return cv2.imread(abs_file_name, cv2.IMREAD_UNCHANGED)
        '''
        if channel == 0:
            self._img = cv2.imread(self._folder_path + file_name, cv2.IMREAD_GRAYSCALE)
        else:
            self._img = cv2.imread(self._folder_path + file_name, cv2.IMREAD_COLOR)
        #self._folder_path = folder_path
        '''

    def bgr2rgb(self, image):
        return cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
        #return image[...,::-1]
        
    def bgr2gray(self, image):
        return cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

    def resize_img(self, img, size=(32, 32)):
        return cv2.resize(img, dsize=size, interpolation = cv2.INTER_AREA)

    def scailing(self, img, new_min = 0, new_max = 255):
        
        old_max = np.max(img)
        old_min = np.min(img)

        #return np.divide(np.subtract(new_max, new_min), np.subtract(old_max, old_min)) * (img - old_min) + new_min

        new_img = img.copy()
        new_img = cv2.normalize(img, dst=None, alpha=0, beta=1, norm_type=cv2.NORM_MINMAX, dtype=cv2.CV_32F)
        return new_img

    def one_hot_encoding(self, labels):
        label_binarizer = LabelBinarizer()
        labels_one_hot = label_binarizer.fit_transform(labels)

        encoder = OneHotEncoder()
        encoder.fit(labels_one_hot)
        label_one_hot = encoder.transform(labels_one_hot).toarray()

        return label_one_hot
        
if __name__=="__main__":
    read_dir = "../../Data/Face/lfw-truncated/"
    save_dir = "../../Data/Face/"
    
    # Data wrangling for raw face dataset
    data_wrangling = DataWrangling(read_dir)
    ''' # # face image to pickle
    features, labels = data_wrangling.img2numpy_array(data_wrangling.dir_path)
    
    PickleHelper.save_to_pickle(save_dir, "faces-32x32-features.pkl", features)
    PickleHelper.save_to_pickle(save_dir, "faces-32x32-labels.pkl", labels)    
    '''

    # Load pickle data
    feature1 = PickleHelper.load_pickle(path = "../../Data/Face/", name = "faces-32x32-features.pkl")
    feature2 = PickleHelper.load_pickle(path = "../../Data/Objects/cifar-100-python/", name = "train")[b'data']
    
    # Data wragline for concatenating face and cifar dataset
    # # Normalization for face images

    new_feature = []
    for f in tqdm(feature1):
        #f_gray = data_wrangling.bgr2gray(f)
        f_norm = data_wrangling.scailing(f, new_min=0, new_max=1)
        #print("feature1 < min: {0} | max: {1} >".format(np.min(f_norm), np.max(f_norm)))
        new_feature.append(f_norm)
    feature1 = new_feature

    # # Change channel of image to the last dimension
    feature2 = np.reshape(feature2, (-1, 3, 32, 32))
    feature2 = np.moveaxis(feature2, 1, 3)

    # # Normalization for object images
    new_feature = []
    for f in tqdm(feature2):
        #f_gray = data_wrangling.bgr2gray(f)
        f_norm = data_wrangling.scailing(f, new_min=0, new_max=1)
        #print("feature1 < min: {0} | max: {1} >".format(np.min(f_norm), np.max(f_norm)))
        new_feature.append(data_wrangling.scailing(f_norm))
    feature2 = new_feature

    features = np.vstack([feature1, feature2])
    
    label1 = np.ones(len(feature1), dtype=np.float32)
    label2 = np.ones(len(feature2), dtype=np.float32)*2
    labels = np.hstack([label1, label2])
    
    # # shuffle the dataset
    shuffle_idx = np.arange(len(labels))
    np.random.shuffle(shuffle_idx)
    features = features[shuffle_idx]
    labels = labels[shuffle_idx]

    labels = data_wrangling.one_hot_encoding(labels)
    #print(labels[:10])
    
    PickleHelper.save_to_pickle(save_dir, "faces-obj-32x32-features-norm.pkl", features)
    PickleHelper.save_to_pickle(save_dir, "faces-obj-32x32-labels-norm.pkl", labels)


    
