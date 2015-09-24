class Playlist

	def initialize (name)
		@name = name
		@movies = []
	end

	def play
		puts "#{@name}'s PLAYLIST"
		@movies.each do |movie|
			puts movie
		end
	end

	def add_movie(movie)
		@movies << movie
	end

	def to_s
		puts @movies.size.to_s
	end

end

class Movie
	#attr_reader :title
	#attr_writer :title
	attr_accessor :title

	def initialize(ptitle,prank=0)
 		@title = ptitle.capitalize
 		@rank = prank
	end

	def thumbs_up
		@rank += 1
		#@rank = @rank +1
	end

	def thumbs_down
		@rank -= 1
		#@rank = @rank 1
	end

	def to_s
		"#{@title} hat ein Ranking von #{@rank}"
	end

end

movie1 = Movie.new("NinjaTurtles")
movie2 = Movie.new("45 years",8)
movie3 = Movie.new("8mm",10)
movie4 = Movie.new("Shooter",10)
movie5 = Movie.new("Happy Halloween",1)

movies = [movie1, movie2, movie3, movie4, movie5]
movies.each do |movie|
	movie.thumbs_up
	movie.thumbs_down
	puts movie
end

pl = Playlist.new("Theo")
pl.add_movie(movie1)
pl.add_movie(movie2)
pl.play
