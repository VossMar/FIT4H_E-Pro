class Movie < ActiveRecord::Base
	
	validates :titel, :release, :duration, presence: true
	validates :description, length: { minimum: 25 }
	validates_numericality_of :total_gross, :only_integer => true, :greater_than_or_equal_to => 0
	validates_format_of :image, :with    => %r{\.(gif|jpg|png)}i, :message => "endung falsch. Nur gif, jpg, png zulässig!"

	def flop?
		self.total_gross.blank? || self.total_gross < 50000000
	end

	def dur?
		self.duration.blank?
	end

	def self.upcoming
		where("release <= ?" , Time.now).order("release")
	end

end
