module MovieHelper
		def ein_mehrzahl
			if @movies.size == 1
				"Movie"
			else
				"Movies"
			end
		end

		def currenc(movie)
			if movie.total_gross < 50000000
				"Flop!"
			else
				number_to_currency(movie.total_gross, unit: "€ ")
			end
		end

		def sinpluanz(movie)
			truncate(movie.description, length: 40, seperator: "")
		end
end
