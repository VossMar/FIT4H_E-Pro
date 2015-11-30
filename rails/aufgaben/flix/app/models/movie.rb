class Movie < ActiveRecord::Base
	def flop?
		self.total_gross.blank? || self.total_gross < 50000000
	end

<<<<<<< HEAD
	def self.upcoming
		where("release <= ?" , Time.now).order("release")
	end
=======
>>>>>>> 276b514f1b572e563bfeef013faf4e3d867e2dd7
end
