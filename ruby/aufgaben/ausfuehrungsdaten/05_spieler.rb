class Player

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

	def to_s
		say_hello
	end

end

player1 = Player.new("Marvin",90)
player2 = Player.new("Hans")
puts player1

player1.blam
puts player1

player2.w00t
puts player2


#a. erstellen Sie eine Klasse mit der Bezeichnung Player
#b. erstellen Sie ein Objekt player1 der Klasse 
#c. erstellen Sie eine initialize - Methode, die die Parameter name und health hat und aus diesen Werten die Instanzvariablen @name und @health initialisiert
#d. updaten Sie das Objekt player1 und lassen sich das objekt anzeigen
#e. setzen Sie fuer health einen Standardwert 100
#f. legen Sie eine neues Objekt player2 an, das nur den Namen als Parameter hat
#g. passen Sie die say_hello - Methode aus der vorherigen Übung zur Ausgabe ein, so dass puts player1.say_hello die Ausgabe ergibt
#h. fuegen Sie eine Instanzmethode blam und w00t hinzu, die den Wert fuer health umd 10 hochsetzt, bzw. reduziert und ausgibt: Tom got blamed, bzw. w00ted.
#i. die say_hello - Methode soll aufgerufen werden, wenn nur das Objekt ausgegeben werden soll, also puts players erfolgt.