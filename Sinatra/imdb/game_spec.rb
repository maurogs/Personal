require './game.rb'

Rspec.describe "Movie Game" do 

	let (:type_search) {MovieSearcherStub.new}

	it "search title" do 
		expect(MovieGame.new(type_search).find_title("titanic"))
			.to_eq("titanic")
	end

	it "search poster" do
		expect(MovieGame.new(type_search).find_poster("titanic"))
			.to_eq("http://ia.media-imdb.com/images/M/MV5BMTg4OTExNTYzMV5BMl5BanBnXkFtZTcwOTg1MDU1MQ@@._V1_SX214_AL_.jpg")
	end



end