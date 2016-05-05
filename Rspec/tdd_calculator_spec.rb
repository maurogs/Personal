require_relative 'tdd_calculator'

describe "mi calculadora" do 
	it "must create an object of car" do
		mi_coche = Car.new
		expect(mi_coche).to be_an_instance_of(Car)
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