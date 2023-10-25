require_relative "lib/linkedlist"

sep = "="*20

list = LinkedList.new()

puts "Initial linked list, with size #{list.size}"
p list
puts sep

(1..5).each {|x| list.append(x)}
puts "After appending some nodes, the size is: #{list.size}"
p list
puts sep

list.prepend(0)
puts "After prepending 0, the size is #{list.size}"
p list
puts sep

puts "The tail of the list is"
p list.tail
puts sep

index = -2
puts "At index #{index}  we have the node:"
p list.at(index)
puts sep

n = 4
puts "Does our list contain #{n}?"
puts list.contains?(n)
puts sep
