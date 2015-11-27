module MovieHelper
		def ein_mehrzahl
			if @movies.size != 1
				ret = "sind "
			else
				ret = "ist "
			end
			ret + pluralize(@movies.size,"Movie")
		end

		def currenc(movie)
			if movie.flop?
				content_tag(:strong,"Flop!")
			else
				number_to_currency(movie.total_gross, unit: "€ ")
			end
		end

		def sinpluanz(movie)
			truncate(movie.description, length: 30, seperator: "", omission: "")
		end

		def image_for(movie)
		if movie.image.blank?
			image_tag 'no-img.jpg', size: "150x75"
		else
			image_tag movie.image, size: "150x75"
		end
	end

end
