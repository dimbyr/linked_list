require_relative "node"

class LinkedList 
  attr_accessor :head

  def initialize(head = nil)
    @head = Node.new(head)
  end

  def append(value)
    node = Node.new(value)
    if @head.value.nil?
      @head = node
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = node
    end
  end

  def prepend(value)
    if @head.value.nil?
      @head.value = value
    else 
      new_node = Node.new(value, @head)
      @head = new_node
    end
  end
end
