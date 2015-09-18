#a. Legen Sie eine neue Datei studio_game.rb an
		# touch studio_game.rb

#b. speichern Sie in der Variable name1 den Wert 'larry'
		name1 = "larry"

#c. speichern Sie in der Variable health den Wert 60
		health = 60

#d. geben Sie auf der Konsole: 'larry's health is 60' , unter Verwendung der Variablen aus (2 Versionen)
		puts "#{name1}'s health is #{health}"
		puts name1 + "'s health is " + health.to_s

#e. verdreifachen Sie den Wert von larrys health
		puts "#{name1}'s health is #{health*3}"
		#health = health * 3
		#puts health

#f. reduzieren Sie die health durch eine Division durch 9. Geben Sie eine Variante mit float und eine mit integer aus
		puts "#{name1}'s health is #{health.to_f/9}"
		#health = health.to_f / 3 /9
		#puts health

#g. erzeugen Sie folgende Ausgabe:
	#		larry
	#		curly
	#		moe
		puts "Players:\n\tlarry\n\tcurly\n\tmoe"

#h. speichern sie die Namen der Spieler in Variablen und geben Sie diese erneut wie abgebildet aus
		p1 = "larry"
		p2 = "curly"
		p3 = "moe"

		puts "Players:\n\t#{p1} \n\t#{p2} \n\t#{p3}"