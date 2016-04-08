class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_vis
  	@current_vis = Visitor.find_by(id:session[:vis_id]) if session[:vis_id]
  end
  helper_method :current_vis


   def require_signin
    unless current_vis
      redirect_to new_session_url, alert:"Anmeldung notwendig!"
    end
  end
  helper_method :require_signin


  def require_admin_tl
    unless current_vis && current_vis.admin?
      unless current_vis && current_vis.teamleiter?
        redirect_to root_url, alert:"Administrative Rechte erforderlich!"
      end
    end
  end
  helper_method :require_admin_tl


  def require_admin_tleigen
    unless current_vis && current_vis.admin?
      unless current_vis && current_vis.teamleiter? && current_vis.id == @project.creator_id
        redirect_to root_url, alert:"Höhere Rechte erforderlich!"
      end
    end
  end
  helper_method :require_admin_tleigen

end
