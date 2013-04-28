class MainController < ApplicationController
  before_filter :require_login, :only => ["index"]

  def index
    @reader = Reader.find(session[:reader_id])
  end

  def welcome
    @reader = Reader.new
  end

  def login
    reader = Reader.authenticate(params[:email], params[:password])
    session[:reader_id] = reader.id if reader
    redirect_to "/"
  end
  
end
