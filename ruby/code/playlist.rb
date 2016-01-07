class Playlist

	def initialize (name)
		@name = name
		@movies = []
	end

	def play
		puts "#{@name}'s PLAYLIST"
		@movies.each do |movie|
			case roll_die
				when 1..2
					movie.thumbs_down
					puts "#{movie.title} was nerfed."
				when 2..3
					puts "#{movie.title} is the same."
				else
					movie.thumbs_up
					puts "#{movie.title} was buffed."
			end
			puts movie
		end
	end

	def add_movie(movie)
		@movies << movie
	end

	def roll_die
		rand(1..6)
	end


	def to_s
		puts @movies.size.to_s
	end

end