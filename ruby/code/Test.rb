str_1 = %w(Programmieren Federball Whiskey)
str_2 = %w(Fussball Bier Programmieren)
ergebnis = {diff: (str_1-str_2)+(str_2-str_1),match: str_1&str_2}
puts "ergebnnis= #{ergebnis}"