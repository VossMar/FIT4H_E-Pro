class Player
	attr_accessor :health
	attr_reader :name

	def initialize (name,health=100)
		@name = name
		@health = health
	end

	def say_hello
		"Ich bin #{@name} und mir geht es zu #{@health}% gut um #{time} Uhr."
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

	def score
		@score = name.length + @health
	end

	def to_s
		"#{score}"
	end

end

player1 = Player.new("Marvin",90)
player2 = Player.new("Hans")

puts player1.health
puts player1.score
puts player1





#a. machen Sie aus der Instanzvariablen @health ein lesbares Attribut
#b. geben Sie die Eigenschaft health des Objektes player1 aus
#c. die Eigenschaft name soll sowohl lesbar, als auch schreibbar sein
#d. erzeugen Sie ein virtuelles Attribut score, das den Wert von health addiert mit der Buchstabenlaenge des name -Attributes
#e. aendern Sie die to_s - Methode, zur Ausgabe des Score