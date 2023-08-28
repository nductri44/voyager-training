require './binary_tree'
require './node'

def create_binary_tree
  root = Node.new(nil, nil, 6)
  node1 = Node.new(nil, nil, 4)
  node2 = Node.new(nil, nil, 9)
  node3 = Node.new(nil, nil, 2)
  node4 = Node.new(nil, nil, 7)
  node5 = Node.new(nil, nil, 5)
  node6 = Node.new(nil, nil, 10)

  root.left = node1
  root.right = node2
  node1.left = node3
  node1.right = node4
  node2.left = node5
  node2.right = node6

  tree1 = BinaryTree.new(root)
end

tree1 = create_binary_tree
value1 = 10

def find_value(tree, value)
  if tree.search(tree.root, value)
    puts("#{value} is included in the binary tree")
  else
    puts("#{value} is not included in the binary tree")
  end
end

find_value(tree1, value1)
