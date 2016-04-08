require_relative 'kunde'
require_relative 'kredit'

kunde1 = Kunde.new("Theo Sommer")
kunde1.name = "Theo sonnenschein"
puts kunde1.name
kunde1.gehalt = 2000
kunde1.adresse = "Hermelinweg 11, 22159 Hamburg"
puts kunde1.adresse
kunde1.name = kunde1.name.split(/ /).map(&:capitalize).join(" ")
puts kunde1.name

kredit1 = Kredit.new(kunde1)
kredit1.jahresgehalt = 24000
puts kredit1.kunde
kredit1.kreditsumme = 5000
kredit1.kreditvergabe
kredit1.abzahlung(10)
