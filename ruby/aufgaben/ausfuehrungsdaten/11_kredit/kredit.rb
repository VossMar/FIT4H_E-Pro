class Kredit
	attr_accessor :jahresgehalt
	attr_accessor :kreditsumme


	def initialize (kunde)
	@kunde = kunde
	end

	def kunde
		#@kunde
		"#{@kunde.adresse} Jahresgehalt: #{@jahresgehalt} Euro"
	end

	def kreditvergabe
		if @jahresgehalt > (@kreditsumme*6)
			puts "Der Kredit in Hoehe von #{@jahresgehalt} Euro kann gewaehrt werden."
		else
			puts "Sorry: kein Kredit. Besseren Job suchen."
		end
	end

	def abzahlung (monate)
		abzpromon=@kreditsumme/monate
		puts "Bei einer Rueckzahlung des Kredits von #{@kreditsumme} innerhalb von #{monate} Monaten ist pro Monat eine Zahlung von #{abzpromon} Euro notwendig."
	end


end
