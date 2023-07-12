require_relative './LinkedList.rb'
try = LinkedList.new
try.append("45")
try.append("4")
try.append("45")
try.append("4")
try.append("45")
try.append("4")
try.append("45")
try.prepend("69")
puts "count: #{try.size}"
try.print
puts "head : "
try.head
puts "tail :"
try.tail
puts " at pos 1"
try.at(100)
try.pop
try.print

puts try.contains?("45")

puts try.find("4")
puts try.to_s
 try.insert_at("2",2)
try.print
try.remove_at(2)
try.print
