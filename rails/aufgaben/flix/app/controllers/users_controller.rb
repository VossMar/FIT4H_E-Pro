class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	before_action :require_signin, except: [:new, :create]
	before_action :correct_user, only: [:edit, :update, :destroy]

	def index
		@users = User.all
	end


	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			render 'new'
		end
	end


	def show
	end


	def edit
	end

	def update
		if @user.update
			redirect_to users_path
		else
			render 'edit'
		end
	end


	def destroy
		@user.destroy
		redirect_to users_path
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :password)			
		end

		def set_user
			@user = User.find(params[:id])
		end
		def correct_user
			@user = User.find(params[:id])
			unless @user == current_user
				redirect_to root_url, alert: "Keine Berechtigung"
			end
		end
end
