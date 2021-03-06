from node import Node
import numpy as np


class Sigmoid(Node):
    def __init__(self, node):
        Node.__init__(self, [node])
        
    def _sigmoid(self, x):
        return 1. / (1. + np.exp(-x))

    def forward_propagation(self):
        self.value = self._sigmoid(self.inbound_nodes[0].value)
        
    def backward_propagation(self):
        self.gradients = {node: np.zeros_like(node.value)
                          for node in self.inbound_nodes}
        
        for outbound_node in self.outbound_nodes:
            error = outbound_node.gradients[self]

            sigmoid = self.value

            self.gradients[self.inbound_nodes[0]] += sigmoid * (
                1. - sigmoid) * error
