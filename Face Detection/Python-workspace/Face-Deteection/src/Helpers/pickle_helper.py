'''
Created on May 25, 2018

@author: user170
'''

print("Use pickle")
import pickle
import os

class PickleHelper(object):
    '''
    Wrapper class of Python pickle package
    '''
    @classmethod
    def validation_check(cls, _path, _name):
        assert (_path or _name is not None), "Error: set corret path and name."
                
        if not _path.endswith("/"):
            return _path + "/"
            
        else:
            return _path
    
    @classmethod
    def save_to_pickle(cls, path = None, name = None, data = None):
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