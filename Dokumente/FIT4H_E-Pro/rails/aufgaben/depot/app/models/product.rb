class Product < ActiveRecord::Base

validates :description, presence: true
validates_format_of :image_url, 
					:with => %r{\.(gif\z|jpg\z|png\z)}i, 
					:message => "endung falsch. Nur gif, jpg, png zulässig!"
validates :title, 
				uniqueness: true
validates :price, 
				numericality: { greater_than: 0 }


end
