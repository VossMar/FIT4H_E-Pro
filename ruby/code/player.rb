class Player
	attr_reader :health
	attr_accessor :name

	def initialize (name,health=100)
		@name = name
		@health = health
		@score = name.length + @health
	end

	def say_hello
		"Ich bin #{@name} und mir geht es zu #{@health}% gut um #{time} Uhr mit einem Score von #{@score}."
	end

	def time
		Time.now.strftime("%H:%M")
	end

	def blam
		@health += 10
		puts "Tom got blamed"
	end

	def w00t
		@health -= 10
		puts "Tom got w00ted"
	end

	def to_s
		say_hello
	end


end