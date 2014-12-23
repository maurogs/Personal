puts "What's your name?"

name = gets.chomp

puts "hi #{name}"

puts ""
puts "#####################################################"
puts ""

file_reading = IO.read("text.txt")

puts "The name on file is #{file_reading}"

puts "#####################################################"


print "Write the origin file name (text.txt) --> "
origin_file = gets.chomp
origin_file_read = IO.read("#{origin_file}")
puts "En el archivo pone: #{origin_file_read}"

print "Write destiny file name --> "
destiny_file = gets.chomp


IO.write(destiny_file, origin_file_read)