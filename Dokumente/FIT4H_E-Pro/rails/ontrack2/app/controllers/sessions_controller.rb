class SessionsController < ApplicationController
 
  def new
  end

  def create
  	if user = User.authenticate( params[:email], params[:password])
  		session[:user_id] = user.id
  		flash[:notice] = "Anmeldung erfolgreich!"
  		redirect_to root_path
  	else
  		flash.now[:alert] = "Falsche Benutzerdaten!"
  		render 'new'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	flash[:notice] = "Erfolgreich abgemeldet!"
  	redirect_to root_path
  end

end
