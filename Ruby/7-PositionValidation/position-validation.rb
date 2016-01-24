robot_position = []

def getpos(xory)
	pos = -1
	while (pos.ord < 48 || pos.ord > 53)
		print "Escribe la coordenada #{xory.upcase} (entre 0 y 5) --> "
		pos = gets.chomp
		if (pos.ord < 48 || pos.ord > 53)
			puts "El numero tiene que ser entre 0 y 5. Intentalo otra vez."
		end
	end
	return pos
end

def getdirection
	nsew = -1
	while (nsew.size != 1) || (nsew.ord != 110 && nsew.ord != 115 && nsew.ord != 101 && nsew.ord != 119 && nsew.ord != 78 && nsew.ord != 83 && nsew.ord != 69 && nsew.ord != 87)
		print "Escribe la direccion del robot (N, S, E ó W) --> "
		nsew = gets.chomp
		if (nsew.ord != 110 && nsew.ord != 115 && nsew.ord != 101 && nsew.ord != 119 && nsew.ord != 78 && nsew.ord != 83 && nsew.ord != 69 && nsew.ord != 87)
			puts
			puts "La letra tiene que ser 'N', 'S', 'E' ó 'W'. Intentalo otra vez"
		end
		if nsew.size != 1
			puts
			puts "Solo tiene que ser una letra. Intentalo otra vez."
		end
	end
	return nsew
end	

def getmovements
	validation = false
	while validation == false
		print "Escribe una secuencia (por ej: LRMMMRLLM) --> "
		str = gets.chomp.to_s
		str.each_char do |s|
			if (s.ord != 76 && s.ord != 77 && s.ord != 82 && s.ord != 108 && s.ord != 109 && s.ord != 114)
				validation = false
			else
				validation = true
			end
		end
		if validation == false
			puts "Error. Algun caracter de la secuencia es incorrecto. Intentalo otra vez"
		end
	end

	return str
end

system "clear"
puts "Primero vamos a situar el robot en la parcela"
puts
x_pos = getpos("x").to_i
robot_position << x_pos
puts
puts "La coordenada X es #{x_pos}"
puts
print "Pulsa Enter para continuar"
gets.chomp

system "clear"
y_pos = getpos("y").to_i
robot_position << y_pos
puts
puts "La coordenada y es #{y_pos}"
puts
print "Pulsa Enter para continuar"
gets.chomp

system "clear"
puts "Ahora vamos a orientarlo"
nsew_pos = getdirection.to_s.upcase
robot_position << nsew_pos
puts "La dirección del robot es #{nsew_pos}"
puts
puts
print "La posición completa del robot es: "
robot_position.each {|x| print "#{x} " }
puts
print "Pulsa Enter para continuar"
gets.chomp

system "clear"
puts "Let's make it move!"
puts
puts "Ahora vamos a escribir la secuencia de movimientos."
movements = getmovements.upcase.to_s
puts
puts "La secuencia de movimientos es: #{movements}"
puts
print "Pulsa Enter para continuar"
gets.chomp