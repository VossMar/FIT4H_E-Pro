namespace :importing do 
	desc "Filme einlesen"
	task :add_movies => :environment do
		path = Rails.root.to_s + "/docs/movies.csv"
		file = File.open(path, "r")

		while !file.eof?
			line = file.readline
			items = line.split(";")
			Movie.create(titel: items[0], rating: items[1], total_gross: items[2], release: items[3], description: items[4], duration: items[5])
		end
	end
end
