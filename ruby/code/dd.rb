class Customer

	def initialize (konu,nana ="")
		@bank_account = konu
		@lastname = nana
	end

	def set_first(vona)
		@firstname = vona
	end

	def set_street(str)
		@street = str
	end

	def set_city(ort)
		@city = ort
	end


	def print_address
		"Kunde:\n\t
		Konto:................#{@bank_account}\n\t
		Name:.................#{@firstname} #{@lastname}\n\t
		Strasse:..............#{@street}\n\t
		Ort:..................#{@city}\n\t"
	end


end

customer1 = Customer.new(8888)
customer2 = Customer.new(8392,"Voss")
puts customer2.print_address
customer2.set_first("Marvin")

puts customer2.print_address
customer2.set_street("Dorfstr.35")

puts customer2.print_address
customer2.set_city("24632 Heidmoor")

puts customer2.print_address
