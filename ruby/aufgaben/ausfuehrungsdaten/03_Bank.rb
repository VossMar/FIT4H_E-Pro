class Customer

	def initialize (konu,nana ="")
		@bank_account = konu
		@lastname = nana
	end


	def set_first(vona = " ")
		@firstname = vona
	end

	def set_street(str = " ")
		@street = str
	end

	def set_city(ort = " ")
		@city = ort
	end


	def print_address
		"Kunde:\n
		#{"Konto:".ljust(10,'.')}#{@bank_account.rjust(80, '.')}\n
		#{"Nachname:".ljust(10,'.')}#{@lastname.rjust(80, '.')}\n
		#{"Vorname:".ljust(10,'.')}#{@firstname.rjust(80, '.')}\n
		#{"Strasse:".ljust(10,'.')}#{@street.rjust(80, '.')}\n
		#{"Ort:".ljust(10,'.')}#{@city.rjust(80, '.')}\n"
	end


end

customer1 = Customer.new("8888")
customer2 = Customer.new("8392","Voss")

customer2.set_first("Marvin")
#immoment kann nur vollständig ausgegeben werden, da die punkte nich mit dem nil zurechtkommen
#puts customer2.print_address

customer2.set_street("Dorfstr.35")


customer2.set_city("24632 Heidmoor")

puts customer2.print_address
