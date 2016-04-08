class Calculator

	attr_writer :wert1, :wert2
	attr_reader :summe
	attr_reader :differenz

	def initialize (zahl1=0,zahl2=0)
		@wert1 = zahl1
		@wert2 = zahl2
	end

	def add
		@summe = @wert1 + @wert2
	end

	def subtract
		@differenz = @wert1 - @wert2
	end
end


Rechnung = Calculator.new
Rechnung.wert1 = 5
Rechnung.wert2 = 3
Rechnung.add
puts Rechnung.summe

Rechnung.wert1 = 200
Rechnung.wert2 = 50
Rechnung.subtract
puts Rechnung.differenz





# Erstellen Sie eine Klasse Calculator mit einem Konstruktor, der zwei Zahlen entgegennimmt und in Instanzvariablen speichert. 
# Eine Methode add, und eine Methode subtract führt eine Addition und eine Substraktion durch und gibt das Ergebnis zurueck.
# Legen Sie ein Objekt an und wenden Sie die Methoden add und subtract an.