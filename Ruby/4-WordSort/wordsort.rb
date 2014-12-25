class WordSorting
	@@sentence_checker = true
	@@number_words = 0
	@@final_words = []

	def initialize
		ask_sentence
		check_sentence(@sentence)
		if @@sentence_checker == true
			organize_words(@sentence)
		end
	end

	def ask_sentence
		puts "Write a sentence in lowercase:"
		print "--> "
		@sentence = gets.chomp
	end

	def check_sentence(sentence)
		sentence.split.each do |s|
			check_number_words
		end
		if (@@number_words > 1)
			sentence.split.each do |s|
				check_wrong_chars(s)
			end
		else
			@@sentence_checker = false
			puts "You only wrote 1 word. Try again."
		end
	end

	def check_number_words
		@@number_words += 1
	end		

	def check_wrong_chars(word)
		word.split("").each do |w|
			if (w.ord < 97) | (w.ord > 122)
				@@sentence_checker = false
				puts "Invalid characters. Try again."
			end

		end
	end

	def organize_words(sentence)
		sentence.split.each do |s|
			@@final_words << s
		end
		puts "Here is the result in alphabetical order: "
		print @@final_words.sort_by{|word| word.downcase}
		puts
	end
end

start = WordSorting.new