class Event < ActiveRecord::Base
	has_many :registrations, dependent: :destroy
	validates :name, 
						presence: { message: "Der Name muss gegeben sein!"}

	validates :description, 
						length: { minimum: 15 }

	validates :capacity, 
						numericality: { only_integer: true, greater_than: 0 }

	validates_format_of :image_file, 
											:with => %r{\.(gif\z|jpg\z|png\z)}i, 
											:message => "endung falsch. Nur gif, jpg, png zulässig!", 
											allow_blank: true
							

	def free?
		self.price.blank? || self.price.zero?
	end

	def self.upcoming
		where("start_at >= ?", Time.now).order("start_at")
	end
end
