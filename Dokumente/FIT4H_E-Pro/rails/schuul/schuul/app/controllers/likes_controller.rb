class LikesController < ApplicationController
	before_action :require_signin
	before_action :set_event

	def create
		@event.likers << current_user
		redirect_to @event, notice: "Erfolgreich"
	end

	def destroy
		like = current_user.likes.find(params[:id])
		like.destroy
		redirect_to @event, notice: "Like erfolgreich entfernt!"
	end

end

