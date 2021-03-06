class Visitor < ActiveRecord::Base
  has_secure_password
  has_many :tasks, dependent: :destroy

  validates :name,
  					presence: true
  validates :username,
  					presence: true,
  					uniqueness: true


	def self.authenticate(username, password)
		visitor = Visitor.find_by(:username => username)
		visitor && visitor.authenticate(password)
	end


end
