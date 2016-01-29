class Project < ActiveRecord::Base
	has_many :tasks, dependent: :destroy

	validates :title,
						presence:{ message: "Bitte einen Projektnamen angeben" }


	def self.upcoming
		where("start_date >= ?", Time.now).order("start_date")
	end

	def cre_name
  		Visitor.find(Project.find(self.id).creator_id).name
  	end
end

