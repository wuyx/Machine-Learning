import tensorflow as tf
from tensorflow.contrib.layers import flatten

import numpy as np

from data_wrangling import PickleHelper
from tqdm import tqdm

class net_setup(object):
    def __init__(self):
        # Net info.
        self.learning_rate = 0.001
        self.epoch = 1000
        self.batch_size = 5000
		
        # Network shapes
        self.kernel_1x1 = 1
        self.kernel_3x3 = 3
        
        self.depth1 = 12
        self.depth2 = 24
        self.depth3 = 48
        self.depth4 = 96
        self.depth5 = 192

        self.dense_4096 = 4096
        self.dense_1000 = 1000
        self.dense_output = 2

    @classmethod
    def filter_variable(cls, kernel, in_depth, out_depth, node_name):
        return tf.Variable(
            tf.truncated_normal((kernel, kernel, in_depth, out_depth), stddev=0.1, dtype=tf.float32),
            name=node_name+"_filter")
    
    def bias_variable(cls, size, node_name):
        return tf.Variable(
            tf.zeros([size], dtype=tf.float32), 
            name=node_name+"_bias")

    def dense_variable(cls, in_size, out_size, node_name):
        return tf.Variable(
            tf.truncated_normal([in_size, out_size], stddev=0.1, dtype=tf.float32),
            name=node_name+"_dense")
    
    def max_pool(cls, in_node, node_name):
        return tf.nn.max_pool(in_node, ksize=[1, 2, 2, 1], strides=[1, 2, 2, 1], padding='SAME', name=node_name)

class VGG16(net_setup):
    def __init__(self, features, labels):
        super(VGG16, self).__init__()

        self.__features, self.__feature_shape = self.reshape_for_tensor(features)
        self.__labels = labels

        # For networks
        self.__logits_node = None
        self.__cost_function_node = None
        self.__optimizer_node = None
        self.__correct_prediction_node = None
        self.__accuracy_node = None

    def reshape_for_tensor(self, in_data):
        img_shape = np.shape(in_data)
        if len(img_shape) < 4:
            in_data = np.reshape(in_data, (-1, np.shape(in_data)[1], np.shape(in_data)[2], 1))
            img_shape = np.shape(in_data)

        img_shape = (None, np.shape(in_data)[1], np.shape(in_data)[2], np.shape(in_data)[3])
        
        assert len(img_shape) == 4, (                                                                                       
            "\nCUSTOM ERROR! ---> Input data shape isn't correct. The shape is {shape}".format(shape=img_shape))

        return in_data, img_shape

    def input_node(self, data_shape):
        '''
        img_shape = np.shape(in_data)
 
        if len(img_shape) < 4:
            in_data = np.reshape(in_data, (-1, np.shape(in_data)[1], np.shape(in_data)[2], 1))
            img_shape = np.shape(in_data)
 
        img_shape = (None, np.shape(in_data)[1], np.shape(in_data)[2], np.shape(in_data)[3])
    
        assert len(img_shape) == 4, (
            "\nCUSTOM ERROR! ---> Input data shape isn't correct. The shape is {shape}".format(shape=img_shape))
        '''
        #_, img_shape = self.reshape_for_tensor(in_data)
        
        return tf.placeholder(tf.float32, shape=data_shape)
    
    def convolutional_node(self, in_node, kernel_size, out_depth, name):
        with tf.variable_scope(name):
            conv_filter = self.filter_variable(
                kernel = kernel_size,
                in_depth=in_node.get_shape().as_list()[-1],
                out_depth=out_depth,
                node_name=name)
            #print(conv_filter.shape)
            conv_bias = self.bias_variable(size=out_depth, node_name=name)
            #print(conv_bias.shape)

            conv = tf.nn.conv2d(in_node, conv_filter, [1, 1, 1, 1], padding="SAME")
            conv = tf.nn.bias_add(conv, conv_bias)
            conv = tf.nn.relu(conv)

            return conv

    def dense_node(self, in_node, dense_size, name):
        #print(in_node.get_shape().as_list())
        dense_weight = self.dense_variable(in_size=in_node.get_shape().as_list()[-1], out_size=dense_size, node_name=name)
        dense_bias = self.bias_variable(size=dense_size, node_name=name)
        return tf.nn.relu(tf.add(tf.matmul(in_node, dense_weight), dense_bias))

    def architecture(self, in_node):
        #in_node = self.input_node(in_node)

        conv1_1 = self.convolutional_node(in_node, self.kernel_3x3, self.depth1, "conv1_1")
        conv1_2 = self.convolutional_node(conv1_1, self.kernel_3x3, self.depth1, "conv1_2")
        max_pool1 = self.max_pool(conv1_2, "max_pool1")

        conv2_1 = self.convolutional_node(max_pool1, self.kernel_3x3, self.depth2, "conv2_1")
        conv2_2 = self.convolutional_node(conv2_1, self.kernel_3x3, self.depth2, "conv2_2")
        max_pool2 = self.max_pool(conv2_2, "max_pool2")

        conv3_1 = self.convolutional_node(max_pool2, self.kernel_3x3, self.depth3, "conv3_1")
        conv3_2 = self.convolutional_node(conv3_1, self.kernel_3x3, self.depth3, "conv3_2")
        conv3_3 = self.convolutional_node(conv3_2, self.kernel_1x1, self.depth3, "conv3_3")
        max_pool3 = self.max_pool(conv3_3, "max_pool3")

        conv4_1 = self.convolutional_node(max_pool3, self.kernel_3x3, self.depth4, "conv4_1")
        conv4_2 = self.convolutional_node(conv4_1, self.kernel_3x3, self.depth4, "conv4_2")
        conv4_3 = self.convolutional_node(conv4_2, self.kernel_1x1, self.depth4, "conv4_3")
        max_pool4 = self.max_pool(conv4_3, "max_pool4")

        conv5_1 = self.convolutional_node(max_pool4, self.kernel_3x3, self.depth5, "conv5_1")
        conv5_2 = self.convolutional_node(conv2_1, self.kernel_3x3, self.depth5, "conv5_2")
        conv5_3 = self.convolutional_node(conv2_2, self.kernel_1x1, self.depth5, "conv5_3")
        max_pool5 = self.max_pool(conv5_3, "max_pool5")

        max_pool5_flatten = flatten(max_pool5)
        #print(max_pool5_flatten.get_shape())
        dense1 = self.dense_node(max_pool5_flatten, self.dense_4096, name="dense1")
        dense2 = self.dense_node(dense1, self.dense_4096, name="dense2")
        dense3 = self.dense_node(dense2, self.dense_1000, name="dense3")
        dense_output = self.dense_node(dense3, self.dense_output, name="dense_output")
        # Dens -> Probabilities
        #probabilities = tf.nn.softmax(dense3, name="probabilities")
        #self.__architecture = probabilities

        # Dens -> Logits
        logits = tf.nn.relu(dense_output)
        self.__logits_node = logits
        
    def __cross_entropy_cost_function_from_logits(self, logits_from_network_node, hot_encoded_labels_node):
        self.__cost_function_node = tf.reduce_mean(
            tf.nn.softmax_cross_entropy_with_logits(
                logits=logits_from_network_node, labels=hot_encoded_labels_node))

    def __optimizer_for_cost_function(self, cost_function_node, learning_rate):
        optimizer = tf.train.AdamOptimizer(learning_rate=learning_rate)
        self.__optimizer_node = optimizer.minimize(loss=cost_function_node)

    def __convert_to_one_hot_encoded_labels(self, labels):
        labels_placeholder = tf.placeholder(tf.int32, shape=(None))
        one_hot_node = tf.one_hot(labels_placeholder, depth=np.max(labels)+1, dtype=tf.float32)

        with tf.Session() as sess:
            one_hot_label = sess.run(one_hot_node, feed_dict={labels_placeholder:labels})

        return one_hot_label

    def __get_correct_prediction(logits_node, labels_node):
        self.__correct_prediction_node = tf.equal(tf.argmax(logits_node, 1), tf.argmax(labels_node, 1))
	
    def __get_accuracy(correct_predction_node):
    	self.__accuracy_node = tf.reduce_mean(tf.cast(correct_predction_node, tf.float32))
	
    def run_architecture(self):
        # Prepare input nodes and data
        # # Convert input data for proper shape
        # in_data, _ = self.reshape_for_tensor(self.__features)
        train_labels_data = self.__convert_to_one_hot_encoded_labels(self.__labels)
	        
        # # Set input tensor
        train_feature_node = self.input_node(self.__feature_shape)
        train_labels_node = self.input_node([self.batch_size, np.shape(train_labels_data)[1]])
        print(train_labels_node)

        # Build VGG16 architecture
        self.architecture(train_feature_node)
        self.__cross_entropy_cost_function_from_logits(self.__logits_node, train_labels_node)
        self.__optimizer_for_cost_function(self.__cost_function_node, self.learning_rate)

        with tf.Session() as sess:
            sess.run(tf.global_variables_initializer())

            batch_index = np.random.choice(len(self.__features), size=self.batch_size)
            batch_x = self.__features[batch_index]
            batch_y = train_labels_data[batch_index]
            print("Batch train shape:{0}, Batch label shape:{1}".format(np.shape(batch_x), np.shape(batch_y)))

            for epoch in tqdm(range(self.epoch)):
                #a = sess.run(self.__architecture, feed_dict={train_feature_node:self.__features})
                #print("Output:", np.max(a))
                sess.run(self.__optimizer_node, feed_dict={train_feature_node:batch_x, train_labels_node:batch_y})

                if epoch % 10 == 0:
                    correct_predction_node = self.__correct_prediction_node(self.__logits_node, train_labels_node)
                    self.__accuracy_node = self.__get_accuracy(correct_predction_node)
                    train_accuracy = sess.run(self.__accuracy_node, feed_dict={train_feature_node:batch_x, train_labels_node:batch_y})
                    print('step {0}, training accuracy {1}'.format(epoch, train_accuracy))
