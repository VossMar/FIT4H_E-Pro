class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_vis
  	@current_vis = Visitor.find_by(session[:vis_id]) if session[:vis_id]
  end
  helper_method :current_vis

  def require_admin
    unless current_vis && current_vis.admin?
      redirect_to root_url, alert:"Admin-Bereich!"
    end
  end
  helper_method :require_admin

  def require_signin
		unless current_vis
			redirect_to new_session_url, alert:"Anmeldung notwendig!"
		end
	end
	helper_method :require_signin
	
end
