class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :require_login

  def require_login
    redirect_to '/welcome' unless !!session[:reader_id]
  end
end
