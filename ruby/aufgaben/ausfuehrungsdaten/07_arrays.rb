



#a. legen Sie zur uebung auf der irb ein Array jahreszeiten mit den Elementen: Sommer, Herbst, Winter an; sowohl in der Langform, als auch der Kurzform
#jahreszeiten = ['Sommer','Herbst','Winter']
#jahreszeiten = %w(Sommer Herbst Winter)
#b. lassen Sie ausgeben wieviele Elemente das Array enthaelt, welche Jahreszeit die zweite im Array ist
#jahreszeiten.size
#jahreszeiten.count
#jahreszeiten[1]
#c. fuegen Sie das Element fruehjahr hinzu
#jahreszeiten << 'fruehjahr'
#d. entfernen Sie das Element wieder aus dem Array
#jahreszeiten.pop
#e. ermitteln Sie mit Hilfe von ri, wie join Ihnen bei einer folgendermassen formatierten Ausgabe behilflich sein kann: Sommer und Herbst und Winter
#ri Array.join
#f. notieren Sie den Befehl
#jahreszeiten.join("  und ")
#g. ermitteln Sie den Befehl mit dem Sie die Positionen der Elemente des Arrays nach einem Zufallsprinzip anordnen koennen
#jahreszeiten.shuffle
#h. packen Sie Ihre drei Player aus dem Projekt in ein Array
class Player
	attr_accessor :health
	attr_accessor :name

	def initialize (name,health=100)
		@name = name
		@health = health
	end
end

player1 = Player.new("Marvin",90)
player2 = Player.new("Hans")
player3 = Player.new("Timo",60)

players = [player1,player2,player3]
players.each do |play|
	puts play.name
end

#i. Geben Sie Player mit einer Iteration über das Array aus. Beginnen Sie mit einer Zeile, in der sie die Anzahl der Mitspieler notieren
puts players.size
