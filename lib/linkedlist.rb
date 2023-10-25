require_relative "node"

class LinkedList 
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  def append(value)
    node = Node.new(value)
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = node
  end
end
