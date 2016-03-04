class Movie < ActiveRecord::Base
	has_many :reviews, dependent: :destroy

	validates :titel, 
						:release, 
						:duration, 
						presence: true
	validates :description, 
						length: { minimum: 25 }
	validates_numericality_of :total_gross, 
														:only_integer => true, 
														:greater_than_or_equal_to => 0
	validates_format_of :image, 
											:with => %r{\.(gif\z|jpg\z|png\z)}i, 
											:message => "endung falsch. Nur gif, jpg, png zulässig!", 
											allow_blank: true
	validates_inclusion_of :rating, 
													in: %w( G PG PG-13 R NC-17 ), 
													message: "Bewertungsmöglichkeiten: G, PG, PG-13, R, NC-17"

	def flop?
		self.total_gross.blank? || self.total_gross < 50000000
	end

	def dur?
		self.duration.blank?
	end
	
end
