require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(val)
    return prepend(val) if head.nil?

    tail.next_node = create_node(val)
  end

  def prepend(val)
    self.head = create_node(val, head)
  end

  def create_node(val = nil, next_node = nil)
    Node.new(val, next_node)
  end

  def size
    counter = 1
    current_node = head
    until current_node.next_node.nil?
      current_node = current_node.next_node
      counter += 1
    end
    counter
  end

  def tail
    current_node = head
    current_node = current_node.next_node until current_node.next_node.nil?
    current_node
  end

  def pop
    current_node = head
    current_node = current_node.next_node until current_node.next_node == tail
    tail = current_node.next_node
    current_node.next_node = nil
    tail
  end
end

arr = LinkedList.new

arr.append(1)
arr.append(2)
arr.append(3)
arr.pop
p arr
