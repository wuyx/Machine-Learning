from input import Input
from copy import deepcopy
import numpy as np

class Network(object):
    
    @classmethod
    def topological_sort(cls, feed_dict):
        """ Khan's algorithm """
        input_nodes, node_group =cls.__in_out_update__(Network(), feed_dict)
        sorted_nodes = []
        next_nodes = set(input_nodes)

        while len(next_nodes) > 0:
            node = next_nodes.pop()

            if isinstance(node, Input):
                node.value = feed_dict[node]
                
            sorted_nodes.append(node)
            
            for out_node in node.outbound_nodes:
                node_group[node]['out'].remove(out_node)
                node_group[out_node]['in'].remove(node)

                if len(node_group[out_node]['in']) == 0:
                    next_nodes.add(out_node)

        return sorted_nodes
    
    @staticmethod
    def __in_out_update__(self, feed_dict):
        """
        Args:

        Returns:
        input_nodes: keys of feed_dict which represent all nodes
        node_group: dictionary which contains nodes and its before and after node relationship
        """
        # Insert inbound and outbout value for every node
        input_nodes = feed_dict.keys()
        nodes = [n for n in input_nodes]
        node_group = {}
        
        while len(nodes) > 0:
            selected_node = nodes.pop(0) # return the first node of nodes

            if selected_node not in node_group:
                node_group[selected_node] = {'in': set(), 'out': set()}

            # iterate all outbound_nodes in the selected node
            for idx, out_node in enumerate(selected_node.outbound_nodes):
                if out_node not in node_group:
                    node_group[out_node] = {'in': set(), 'out': set()}

                # insert outbound_node into selected_node's inbound_node
                node_group[selected_node]['out'].add(out_node)
                # insert selected_node to outbound_node's inbound_node
                node_group[out_node]['in'].add(selected_node)

                # update all nodes list by inserting outbound_node if it isn't in the list.
                if out_node not in nodes:
                    nodes.append(out_node)

        return input_nodes, node_group

    @staticmethod
    def forward_propagation(sorted_nodes):
        for node in sorted_nodes:
            node.forward_propagation()

    @staticmethod
    def backward_propagation(sorted_nodes):
        for node in sorted_nodes[::-1]:
            node.backward_propagation()

    @staticmethod
    def evaluate(graph, hyper_parameters, train_nodes, test_dataset):
        graph_t = zip(deepcopy(graph), graph)
        hyper_parameters_t = deepcopy(hyper_parameters)
        
        feed_dict = {}
        
        for node_copy, node in graph_t:
            if node == train_nodes[0]:
                feed_dict[node_copy] = test_dataset[0]

            elif node == train_nodes[1]:
                feed_dict[node_copy] = test_dataset[1]

            elif isinstance(node, Input) and node in hyper_parameters:
                feed_dict[node_copy] = node_copy.value

        graph_t = Network.topological_sort(feed_dict)
        Network.forward_propagation(graph_t)
        
        cost = graph_t[-1]
        #print "EVALUATE COST: {0}".format(cost.value)
        #print "EVALUATE PRED Y: \n{0}\n-----------".format(np.shape(cost.pred_y))
        count_correct_result = sum([np.argmax(y_star) == np.argmax(y) for y_star, y in zip(cost.pred_y, test_dataset[1])])
        return count_correct_result / float(len(test_dataset[0])) * 100
