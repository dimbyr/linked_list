require_relative "lib/linkedlist"
require_relative "lib/linkedlist"

head = Node.new()
list = LinkedList.new(head)

puts "Initial linked list"
p list

(1..5).each {|x| list.append(x)}
puts 'After appending some nodes'
p list
