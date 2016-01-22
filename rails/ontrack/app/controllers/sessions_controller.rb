class SessionsController < ApplicationController
  
  def new
  end

  def create
  	if visitor = Visitor.authenticate(params[:username], params[:password])
  		session[:vis_id] = visitor.id
  		flash[:notice] = "Anmeldung erfolgreich!"
  		redirect_to root_path
  	else
  		flash.now[:alert] = "Ungültige Anmeldedaten!"
  		render 'new'
  	end
  end

  def destroy
  	session[:vis_id] = nil
  	redirect_to root_path
  end
end
