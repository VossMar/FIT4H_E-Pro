# Methoden:
# a. definieren Sie eine Methode say_hello mit dem Argument name. 
#    Das Ergebnis des Aufrufs ist dann die Ausgabe: 'Ich bin Ludwig'

def say_hello
	puts "Ich bin Ludwig."
end
say_hello
		puts "\n"

# b. rufen Sie die Methode mit verschiedenen namen auf
def say_hello
	puts "Ich bin Ludwig."
	puts "Ich bin Daniel."
	puts "Ich bin Timoeoeoeoe."
end
say_hello
		puts "\n"

# c. puts soll nun aus der Methode entfernt werden
def say_hello(name)
	puts "Ich bin #{name}."
end
puts say_hello('Ludwig')

# d. aendern sie die Methode, so dass sie einen Statndarparmameter health entgegennimmt. 
#    Die Ausgabe lautet dann: 'Ich bin Ludwig mit einem Wert von 100'
def say_hello(name,health=0)
	puts "Ich bin #{name} und mir geht es zu #{health}% gut."
end
puts say_hello('Marvin',60)

# e. definieren Sie eine Methode time, die in der Methode say_hello aufgerufen 
#    wird und die Ausgabe folgendermaßen ergaenzt: 'Ich bin Ludwig mit einem Wert von 100 um 18:25'
def say_hello(name,health=0)
	puts "Ich bin #{name} und mir geht es zu #{health}% gut um #{time} Uhr."
end
def time
	Time.now.strftime("%H:%M")
end
puts say_hello('Marvin',55)


# Klassen:
# a. erstellen Sie eine Klasse mit der Bezeichnung Player
class Player

# c. erstellen Sie eine initialize - Methode, die die Parameter name und health hat 
#    und aus diesen Werten die Instanzvariablen @name und @health initialisiert
# e. setzen Sie fuer health einen Standardwert 100
	def initialize(name,health=100)
		@name = name
		@health = health
 	end

# d. updaten Sie das Objekt player1 und lassen sich das objekt anzeigen
 	def hi
 		puts "Ich heiße #{@name} und mir geht es zu #{@health}% gut."
 	end
end

# b. erstellen Sie ein Objekt player1 der Klasse
obj_player1 = Player.new('Marvin',70)
puts obj_player1.hi
# f. legen Sie eine neues Objekt player2 an, das nur den Namen als Parameter hat
obj_player2 = Player.new('Martin')
puts obj_player2.hi
		puts "\n"

# g. passen Sie die say_hello - Methode aus der vorherigen Übung zur Ausgabe ein, so dass 
#    puts player1.say_hello die Ausgabe ergibt
class Player1
	def initialize(name,health=100)
		@name = name
		@health = health
 	end
	def hi
 		puts "Ich heiße #{@name} und mir geht es zu #{@health}% gut."
 	end
	def say_hello
	puts "Name: #{@name} Leben: #{@health}% "
	end
end
obj_player1 = Player1.new('Marvin',70)
obj_player1.say_hello
obj_player1.hi
		puts "\n"

# h. fuegen Sie eine Instanzmethode blam und w00t hinzu, die den Wert fuer health umd 10 hochsetzt, 
#    bzw. reduziert und ausgibt: Tom got blamed, bzw. w00ted.
class Player2
	def initialize(name,health=100)
		@name = name
		@health = health
 	end
	def buff
		@health += 10
		puts "Tom got buffed"
	end
	def nerf
		@health -= 10
		puts "Tom got nerfed"
	end
	def hi
 		puts "Ich heiße #{@name} und mir geht es zu #{@health}% gut."
 	end
	def say_hello
	puts "Name: #{@name} Leben: #{@health}% "
	end
end
obj_player1 = Player2.new('Tom',70)
obj_player1.hi
obj_player1.buff
obj_player1.say_hello
obj_player1.nerf
obj_player1.hi
		puts "\n"

# i. die say_hello - Methode soll aufgerufen werden, wenn nur das Objekt ausgegeben werden soll, 
#    also puts players erfolgt.
class Player3
	def initialize(name,health=100)
		@name = name
		@health = health
 	end
	def hi
 		"Ich heiße #{@name} und mir geht es zu #{@health}% gut."
 	end
	def say_hello
	"Name: #{@name} Leben: #{@health}% "
	end
end
obj_player4 = Player3.new('Tom',70)
obj_player5 = Player3.new('Manni',60)

players = "Players: \n\t#{obj_player4.say_hello}\n\t#{obj_player5.say_hello}"
puts players