class TodosController < ApplicationController
	
	def index
		@todos = Todo.all
	end


	def new
		@todo = Todo.new
	end


	def create
		@todo = Todo.new(params_need[:id])
		@todo.save
		redirect_to todos_path
	end


	def show
		@todo = Todo.find(params[:id])
	end

	def showall
	end


	def edit
	end


	def update
	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.delete
		redirect_to todos_path
	end


	private

		def params_need
			params.require(:todos).permit(:title, :end_date, :prio, :extention)
		end


end
