class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
	end


	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(params_needed)
		@movie.save
		redirect_to movie_path(@movie.id)
	end


	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])
		@movie.update(params_needed)
		redirect_to movie_path(@movie.id)
	end


	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_path
	end


private
	def params_needed
		params.require(:movie).permit(:titel, :description, :rating, :total_gross, :release)
	end

end
