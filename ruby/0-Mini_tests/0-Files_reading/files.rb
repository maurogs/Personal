puts "What's your name?"

name = gets.chomp

puts "hi #{name}"

puts ""
puts "#####################################################"
puts ""

file_reading = IO.read("text.txt")

puts "El nombre que sale en el archivo es #{file_reading}"

puts "#####################################################"


print "Escribe el nombre del archivo de origen (text.txt) --> "
origin_file = gets.chomp
origin_file_read = IO.read("#{origin_file}")
puts "En el archivo pone: #{origin_file_read}"

print "Escribe el archivo de destino --> "
destiny_file = gets.chomp


IO.write(destiny_file, origin_file_read)