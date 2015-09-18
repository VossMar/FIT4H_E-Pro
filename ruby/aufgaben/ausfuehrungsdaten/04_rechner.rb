class Calculator

	def initialize (wer1,wer2)
		@wert1 = wer1
		@wert2 = wer2
	end

	def add
		@summe = @wert1 + @wert2
	end

	def subtract
		@differenz = @wert1 - @wert2
	end
end




# Erstellen Sie eine Klasse Calculator mit einem Konstruktor, der zwei Zahlen entgegennimmt und in Instanzvariablen speichert. 
# Eine Methode add, und eine Methode subtract führt eine Addition und eine Substraktion durch und gibt das Ergebnis zurueck.
# Legen Sie ein Objekt an und wenden Sie die Methoden add und subtract an.