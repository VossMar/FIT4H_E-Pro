class Game

	def initialize (title)
		@title =title
		@player = []
	end

	def add_player(addplayer)
		@player << addplayer
	end

	def play
		puts "There are #{@player.count} players in #{@title}:"
		@player.each do |var|
		puts var.say_hello
		end
		@player.each do |var2|
		var2.blam
		var2.w00t
		var2.w00t
		puts var2.say_hello	
		end

	end




end