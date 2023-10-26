require_relative 'node'

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
      current_node = current_node.next_node until current_node.next_node.nil?
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
    current_node = current_node.next_node until current_node.next_node.nil?
    current_node
  end

  def at(index)
    return 'Invalid index' if !index.is_a?(Integer) || index.abs >= size
    return @head if index.zero?

    current_node = @head
    stop_index = (index.positive? ? index : (size + index))
    (0...stop_index).each { current_node = current_node.next_node }
    current_node
  end

  def pop
    current_node = @head
    current_node = current_node.next_node until current_node.next_node.nil? || current_node.next_node.next_node.nil?
    current_node.next_node = nil
  end

  def contains?(value)
    return true if @head.value == value

    current_node = @head
    until current_node.nil?
      return true if current_node.value == value

      current_node = current_node.next_node
    end
    false
  end

  def find(value)
    return nil unless contains?(value)

    current_node = @head
    ind = 0
    until current_node.nil?
      return ind if current_node.value == value

      ind += 1
      current_node = current_node.next_node
    end
    ind
  end

  def to_s
    string = ''
    current_node = @head
    until current_node.nil?
      string = "#{string}( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    "#{string}nil"
  end

  # EXTRA CREDITS
  def insert_at(value, index)
    # Insert `value` at index `index`
    unless index.is_a?(Integer) && index.positive?
      return 'Invalid index'
    end
    if index.zero? 
      prepend(value)
    elsif index >= size
      append(value)
    else
      current_node = @head
      (index-1).times {current_node = current_node.next_node}
      node_to_insert = Node.new(value, current_node.next_node)
      current_node.next_node = node_to_insert
    end
  end

  def remove_at(index)
    # remove element at index  `index`
  end
end
