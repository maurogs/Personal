class CaesarCypher
	@@word_after = ""
	@@shift_ratio = -1
	@@wrong_sentence = false
	@@shift_validator = false

	def initialize
		choose_shift
		choose_sentence
		strip_spaces(@sentence_before)
		print_cypher
	end

	def choose_sentence
		print "Write a sentence --> "
		@sentence_before = gets.chomp 
	end

	def choose_shift
		while @@shift_validator == false
			print "Choose the shift ratio (between 1 and 9) --> "
			@@shift_ratio = gets.chomp
			if @@shift_ratio.length < 2
				shift_is_number(@@shift_ratio)
			else
				puts "Wrong number. Try again."
			end
		end
	end

	def shift_is_number(shift)
		if (shift.ord > 47) & (shift.ord < 58)
			@@shift_ratio = @@shift_ratio.to_i
			@@shift_validator = true
		else
			puts "Wrong number. Try again."
		end
	end

	def strip_spaces(sentence)
		sentence.split.each do |s|
			strip_letters(s)
			@@word_after += " "
		end
	end

	def strip_letters(word)
		word.split("").each do |w|
			check_letters(w) 
		end
	end

	def check_letters(letter)
		if (letter.ord > 96) & (letter.ord < 123)
			shift_three(letter, @@shift_ratio)
		else
			@@wrong_sentence = true
		end	
	end

	def shift_three(char, shift)
		if (char.ord < (97 + shift)) 
			char_first = char.ord + (26 - shift)
			@@word_after += char_first.chr
		else
			char_second = char.ord - shift
			@@word_after += char_second.chr
		end
	end

	def print_cypher
		if @@wrong_sentence == false
			puts "The cypher is: #{@@word_after}"
		else
			puts "Wront sentence, try again."
		end
	end

end


start = CaesarCypher.new

