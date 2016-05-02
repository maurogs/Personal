def sum(num1, num2)
	if num1.class == String || num2.class == String
		return "error"
	else
		return num1 + num2
	end
end

def rest(num1, num2)
	if num1.class == String || num2.class == String
		return "error"
	else
		return num1 - num2
	end
end





RSpec.describe "my calculator" do
    it "must sum two numbers" do
        expect(sum(2,3)).to be(5)
    end

    it "must return 'error' with two strings" do
    		expect(sum("hola", "adios")).to eq("error")
    		expect(rest("hola", "adios")).to eq("error")
    end

    it "must rest two numbers" do
    		expect(rest(2,3)).to be(-1)
    end
end
