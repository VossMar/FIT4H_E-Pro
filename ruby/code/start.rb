str = "Heute ist Freitag"
puts str

nz = "Hallo\n\tdu\n\tVogel"
puts nz

zahl = 15
puts zahl
	# puts konvertiert eine Zahl in einen String, besser ist aber eine expizierte Konvertierung (puts zahl.to_s)

#Zusammengestetzte Strings
puts str + zahl.to_s 

puts "#{str} der #{zahl}. im Monat"

tag = "Freitag"
puts "Heute ist #{tag}, der #{Time.new}."

3.times do 
	puts str
end

