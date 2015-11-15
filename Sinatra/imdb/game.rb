require 'sinatra'
require 'sinatra/reloader' if development?
require 'imdb'

set :port, 3000
set :bind, '0.0.0.0'

get '/' do 
	erb :search
end

post '/results' do 
	@hash = MovieGame.new.find_movies(params["movie"])
	@correct_movie = @hash.sample
	@keys = @hash.keys.sample
	@url = @correct_movie.keys[0]
	@year = @correct_movie.values[0]
	erb :results
end

class MovieGame
	def initialize(searcher=MovieSearcherStub.new)
		@searcher = searcher 
	end

	def find_title(movie_title)
		title = @searcher.search_by_title(movie_title)
	end

	def find_year(movie_title)
		mov = @searcher.search_by_title(movie_title)
		array_years = mov["years"]
		@year = array_years.sample
	end
end

class MovieSearcherStub
	def search_by_title(movie_title)
		my_hash = {}
		my_hash["titles"] = ["titanic1", "titanic2", "titanic3"]
		my_hash["posters"] = ["http://ia.media-imdb.com/images/M/MV5BMjExNzM0NDM0N15BMl5BanBnXkFtZTcwMzkxOTUwNw@@.jpg", "http://ia.media-imdb.com/images/M/MV5BMTcxNzYxOTAwMF5BMl5BanBnXkFtZTcwNzU3Mjc2Nw@@.jpg", "http://ia.media-imdb.com/images/M/MV5BMTIyNjc0NjgyMl5BMl5BanBnXkFtZTcwMDAzMTAzMQ@@.jpg", "http://ia.media-imdb.com/images/M/MV5BMTczNTA2MDc0OF5BMl5BanBnXkFtZTYwMTg4MDY2.jpg", "http://ia.media-imdb.com/images/M/MV5BMTY5ODk1NzUyMl5BMl5BanBnXkFtZTgwMjUyNzEyMTE@.jpg", "http://ia.media-imdb.com/images/M/MV5BMTYxNjg4MzU5OV5BMl5BanBnXkFtZTcwOTA3NTUwMw@@.jpg"]
		my_hash["years"] = ["1902", "2918", "2000", "1000", "2019"]
		my_hash
	end
end

class IMDBSearcher
	def search_by_title(movie_title)
		all_hashes = {}
		six_titles = []
		six_posters_urls = []
		six_years = []
		movie = Imdb::Search.new(movie_title).movies 
		for i in (0..5)
			six_titles << movie[i].title 
			six_posters_urls << movie[i].poster 
			six_years << movie[i].year 			
		end
		all_hashes["titles"] = six_titles
		all_hashes["posters"] = (six_posters_urls.push urls).flatten!
		all_hashes["years"] = six_years
		all_hashes
	end
end








