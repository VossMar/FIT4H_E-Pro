class ProjectsController < ApplicationController

	before_action :find_project, only: [:show, :edit, :update, :destroy]
	


	def index
		@projects = Project.all
	end


	def show
	end


	def new
		@project = Project.new
	end

	def create
		if @project = Project.create(per_par)
			redirect_to root_path
		else
			render 'new'
		end
	end


	def edit
	end

	def update
		if 	@project.update(per_par)
			redirect_to root_path
		else
			render 'edit'
		end
	end


	def destroy
		
	end

private
	def find_project
		@project = Project.find(params[:id])
	end

	def per_par
		params.require(:project).permit(:title, :description, :start_date)
	end




end
