require './node'
require 'debug'

class BinaryTree
  attr_accessor :root

  def initialize(root)
    @root = root
  end

  def search(root, value)
    return false if root.value != value && root.right.nil? && root.left.nil?

    if root.value == value
      true
    elsif root.value > value
      search(root.left, value)
    else
      search(root.right, value)
    end
  end
end
