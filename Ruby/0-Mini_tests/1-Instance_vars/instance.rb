class Person
	@@my_name = "Charles"
	def initialize (name, genre, phone)
		@name, @genre, @phone = name, genre, phone
	end

	def hi
		puts say_my_name
		puts say_genre
		puts my_phone
	end

	def say_my_name
		return "Hi, my name is #{@name}."
	end

	def say_genre
		if @genre == "1"
			return "I'm a man."
		else
			return "I'm a woman."	
		end
	end

	def my_phone
		return "My phone number is #{@phone}"
	end

	def Person.common_friend
		puts "We all are friends of #{@@my_name}."
	end
end



class Questions
	def initialize
		ask_name
		ask_genre
		ask_phone
		print_info
	end

	def ask_name
		print "What's your name? --> "
		@name = gets.chomp
		return @name
	end

	def ask_genre
		@genre = 0
		while (@genre != "1") & (@genre != "2") 
			puts "Select your genre:"
			puts "1 - Male"
			puts "2 - Female"
			print "Type 1 or 2 --> "
			@genre = gets.chomp
		end
		return @genre
	end

	def ask_phone
        print "What's your phone number? --> "
        number = gets.chomp
        @number = ''
        number.split("").each do |i|
            if (i.ord < 48) or (i.ord > 57)
            	puts "Not a valid number, try again."
                return ask_phone
            else
                @number << i
            end
        end
        if (@number.size > 3) & (@number.size < 10)
        	return @number
        else
        	return ask_phone
        end
	end

	def print_info
		profile = Person.new(@name, @genre, @number)
		profile.hi
		puts Person.common_friend
	end



end


system "clear"

start = Questions.new()


