class Review < ActiveRecord::Base
  belongs_to :movie

  validates :name,:stars,:comment,:movie_id, 
  					presence: true
end
