def sum(num1, num2)
	if num1.class == String || num2.class == String
		return "error"
	else
		res = num1 + num2
		return res
	end
end

def average_word_length(str)
	arr_str = str.split
	char_count = 0

	arr_str.each do |x|
		char_count += x.size
	end

	res = char_count.to_f / arr_str.length.to_f
	return res.round(2)
end

class Car

end

RSpec.describe "mi calculadora" do 
	it "must create an object of car" do
		mi_coche = Car.new
		expect(mi_coche).to be_an_instance_of(expected)
	end


	it "returns average word length" do
	  string = "i wish that i was cool"

	  expect(average_word_length(string)).to be_within(0.01).of 2.83
	end

	it "must sum two numbers" do 
		expect(sum(2,6)).to be(8)
		expect(sum(8,-10)).to be(-2)
	end

	it "must return 'error' with one or two strings" do
		expect(sum("hola", "adios")).to eq("error")
	end


end
