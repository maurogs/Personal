class FizzBuzzGame

	def number_divisibility(number)
		if (number % 3 == 0) & (number % 5 == 0)
			return "FizzBuzz"
		elsif number % 3 == 0
			return "Fizz"
		elsif number % 5 == 0
			return "Buzz"
		else
			return number
		end
	end

	def start_fizzbuzz (ending_number)
		(1..ending_number.to_i).each do |number|
			puts number_divisibility(number)
		end
	end

end


game = FizzBuzzGame.new

puts "Let's play FizzBuzz!"
puts "We are gonna count from 0 to a number of your choice."
print "Write that number --> "
end_number = gets.chomp

game.start_fizzbuzz(end_number)


