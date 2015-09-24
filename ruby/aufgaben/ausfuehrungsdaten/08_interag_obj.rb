class Player
	attr_reader :health
	attr_accessor :name

	def initialize (name,health=100)
		@name = name
		@health = health
		@score = name.length + @health
	end

	def say_hello
		"Ich bin #{@name} und mir geht es zu #{@health}% gut um #{time} Uhr mit einem Score von #{@score}."
	end

	def time
		Time.now.strftime("%H:%M")
	end

	def blam
		@health += 10
		puts "Tom got blamed"
	end

	def w00t
		@health -= 10
		puts "Tom got w00ted"
	end

	def to_s
		say_hello
	end


end

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

player1 = Player.new("Marvin",90)
player2 = Player.new("Hans")
player3 = Player.new("Timo",60)

ga = Game.new("Knucḱleheads")
ga.add_player(player1)
ga.add_player(player2)
ga.add_player(player3)

ga.play





# a. erstellen Sie eine Klasse Game mit einem Konstruktor, der eine Instanzvariable title anlegt und fuellt und ein leeres Array mit dem Name Player enthaelt.
# b. die Klasse Game hat eine Methode add_player der ein SPieler hinzugefuegt wird
# c. eine Methode play erzeugt folgenden Ausdruck:
# 	There are 3 players in Knuckleheads: 
# 	I'm Moe with a health of 100 and a score of 103.
# 	I'm Larry with a health of 60 and a score of 65.
# 	I'm Curly with a health of 125 and a score of 130.
# 	Moe got blammed!
# 	Moe got w00ted!
# 	Moe got w00ted!
# 	I'm Moe with a health of 120 and a score of 123.
# 	Larry got blammed!
# 	Larry got w00ted!
# 	Larry got w00ted!
# 	I'm Larry with a health of 80 and a score of 85.
# 	Curly got blammed!
# 	Curly got w00ted!
# 	Curly got w00ted!
# 	I'm Curly with a health of 145 and a score of 150.