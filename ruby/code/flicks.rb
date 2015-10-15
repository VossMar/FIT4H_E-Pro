require_relative 'movie'
require_relative 'playlist'

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
pl.add_movie(movie3)
pl.add_movie(movie4)
pl.add_movie(movie5)
pl.play
