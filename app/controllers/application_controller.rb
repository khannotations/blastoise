class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_login
    puts "SESSION IS"
    p session
    unless !!session[:reader_id]
      redirect_to '/welcome'
    end
  end
  helper_method :require_login
end
