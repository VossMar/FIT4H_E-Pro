class VisitorsController < ApplicationController
	before_action :set_vis, only: [:show, :edit, :update, :destroy]
	before_action :require_signin, except: [:new, :create]
	before_action :require_correct_vis_or_admin, only: [:update, :edit, :destroy]

	def index
		@visitors = Visitor.all
	end


	def new
		@visitor = Visitor.new
	end

	def create
		@visitor = Visitor.create(vis_par)
		if @visitor.save
			redirect_to root_path, notice:"Registrierung erfolgreich!"
		else
			render 'new'
		end
	end


	def show
	end


	def edit
	end

	def update
		if @visitor.update(vis_par)
			redirect_to visitors_path, notice:"Bearbeitung erfolgreich!"
		else
			render 'edit'
		end
	end


	def destroy
		@visitor.destroy
		redirect_to root_path
	end


	private
		def vis_par
			params.require(:visitor).permit(:name, :username, :password, :password_confirmation)
		end

		def set_vis
			@visitor = Visitor.find(params[:id])
		end

		def require_correct_vis_or_admin
			@visitor = Visitor.find(params[:id])
			unless @visitor == current_vis || current_vis.admin?
					redirect_to root_url, alert:"Keine Berechtigung!"			
			end
		end

end
