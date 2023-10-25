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
  
  def size
    return 0 if @head.value.nil? && @head.next_node.nil?
    
    len = 1
    current_node = @head
    until current_node.next_node.nil? 
      current_node = current_node.next_node
      len += 1
    end
    len
  end

  def tail
    return @head if @head.value.nil? && @head.next_node.nil?
    
    current_node = @head
    until current_node.next_node.nil?
       current_node = current_node.next_node
    end
    current_node
  end

  def at(index)
    return 'Invalid index' if !index.is_a?(Integer) || index.abs >= size
    return @head if index == 0
    current_node = @head
    stop_index = (index > 0 ? index : (size + index))
    (0...stop_index).each {|i| current_node = current_node.next_node}
    current_node
  end

  def pop 
  end
end
