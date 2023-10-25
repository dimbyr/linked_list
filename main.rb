require_relative "lib/linkedlist"
require_relative "lib/linkedlist"

list = LinkedList.new()

puts "Initial linked list"
p list

(1..5).each {|x| list.append(x)}
puts 'After appending some nodes'
p list
