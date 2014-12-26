class SubtitlesShift
	attr_accessor :subtitles_shiffted
	@@subtitles_shiffted = ""
	@@shifted_time = ""

	def initialize
		read_subtitles
		separating_lines(@subtitles_reading)
		IO.write("modified_subtitles.srt", @@subtitles_shiffted)
		puts "A file called 'modified_subtitles.srt' has been created with 2 seconds of shift."
	end

	def read_subtitles
		@subtitles_reading = IO.read("subtitles.srt")
	end

	def separating_lines(subtitles)
		subtitles.split("\n").each do |lines|
			if lines.include? " --> "
				splitting_time(lines)
			else
				@@subtitles_shiffted << lines
				@@subtitles_shiffted << "\n"
			end
		end
	end

	def splitting_time(line)
		line.split(" ").each do |parts|
			if parts.include? "-->"
				@@subtitles_shiffted << " --> "
			else
				parts.split(":").each do |numbers|
					changing_time(numbers)
				end
			end
		end
		@@subtitles_shiffted << "\n"
	end

	def changing_time(numbers)
		if numbers.include? ","
			shift_two_seconds(numbers)
		else
			@@subtitles_shiffted << numbers
			@@subtitles_shiffted << ":"
		end
	end

	def shift_two_seconds(number)
		number.split(",").each do |last_numbers|
			if last_numbers.length > 2
				@@subtitles_shiffted << last_numbers
			else
				shift_number = last_numbers.to_i + 2
				@@subtitles_shiffted << (shift_number.to_s)
				@@subtitles_shiffted << ","
			end
		end
	end
end


start = SubtitlesShift.new

