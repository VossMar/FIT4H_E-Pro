class ProjectsController < ApplicationController

	before_action :find_project, only: [:show, :edit, :update, :destroy]
	before_action :require_login, except: [:index, :show]
	


	def index
		@projects = Project.all
	end


	def show
	end


	def new
		@project = Project.new
	end

	def create
		@project = Project.new(per_par)
		if @project.save
			flash[:notice] = "Projekt erfolgreich angelegt!"
			redirect_to root_path
		else
			render 'new'
		end
	end


	def edit
	end

	def update
		if 	@project.update(per_par)
			flash[:notice] = "Projekt erfolgreich bearbeitet!"
			redirect_to root_path
		else
			render 'edit'
		end
	end


	def destroy
		@project.destroy
		flash[:notice] = "Projekt erfolgreich gelöscht!"
		redirect_to root_path
	end

private
	def find_project
		@project = Project.find(params[:id])
	end

	def per_par
		params.require(:project).permit(:title, :description, :start_date)
	end




end
