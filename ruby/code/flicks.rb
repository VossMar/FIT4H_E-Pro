class Movie
 def initialize(ptitle,prank=0)
 	@title = ptitle.capitalize
 	@rank = prank
 end

def to_s
	"#{@title} hat ein Ranking von #{@rank}"
end
 
end



obj_movie1 = Movie.new("NinjaTurtles")
puts obj_movie1.to_s
