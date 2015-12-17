class MoviesController < ApplicationController
	def index
		@movies = Movie.upcoming
	end

	def show
		@movie = Movie.find(params[:id])
	end


	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(params_needed)
		if @movie.save
			flash[:notice] = "Movie created!"
			redirect_to movie_path(@movie.id)
		else
			render "new"
		end
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])
		if @movie.update(params_needed)
			flash[:notice] = "Entry created!"
			redirect_to movie_path(@movie.id)
		else
			render "new"
		end
	end


	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		flash[:notice] = "Movie deleted!"
		redirect_to movies_path
	end

private
	def params_needed
		params.require(:movie).permit(:titel, :description, :rating, :total_gross, :release, :image, :vidurl, :director, :cast, :duration)
	end

end
