class Movie
	#attr_reader :title
	#attr_writer :title
	attr_accessor :title

	def initialize(ptitle,prank=0)
 		@title = ptitle.capitalize
 		@rank = prank
	end

	def hit?
		@rank > 10
	end

	def status
			hit? ? "Hit" : "Flop"
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