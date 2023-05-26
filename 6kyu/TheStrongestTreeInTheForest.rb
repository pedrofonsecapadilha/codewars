# DESCRIPTION:
  # You have a class called Node, representing a node in a binary tree
  # (https://en.wikipedia.org/wiki/Binary_tree).
  # Each node has 2 children - the right child and the left child. These children can of course be null.

  # You job is to add an instance method, height, which returns the longest branch steming from
  # the tree (starting from this node). For example, this tree would result in 3:

  #         (Node)
  #         /    \
  #     (Node)  (Node)
  #     /          \
  #   (Node)      (Node)
  #        \
  #       (Node)

  # Recursion is not necessary, but highly recommended.

# My solution (USANDO CHAT GPT - NÃO ACEITOU O ATTEMPT, DEU ERRO DE Execution Time Out)
class Node
  attr_accessor :r_node, :l_node

  def initialize(r_node = nil, l_node = nil)
    self.r_node = r_node
    self.l_node = l_node
  end

  def height
    return 0 if r_node.nil? && l_node.nil?

    right_height = r_node.nil? ? 0 : r_node.height
    left_height = l_node.nil? ? 0 : l_node.height

    1 + [right_height, left_height].max
  end
end

# Best one
class NullNode
  def height
    -1
  end
end

class Node
  attr_accessor :r_node, :l_node

  def initialize(r_node = nil, l_node = nil)
    self.r_node = r_node || NullNode.new
    self.l_node = l_node || NullNode.new
  end

  def height
    [r_node.height + 1, l_node.height + 1].max
  end
end
