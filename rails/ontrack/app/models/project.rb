class Project < ActiveRecord::Base
	has_many :tasks

	validates :title,
						presence:{ message: "Bitte einen Projektnamen angeben" }


	def self.upcoming
		where("start_date >= ?", Time.now).order("start_date")
	end
end

