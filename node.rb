class Node
  attr_accessor :val, :next_node

  def initialize(val = nil, next_node = nil)
    @val = val
    @next_node = next_node
  end
end
