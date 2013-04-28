class MainController < ApplicationController
  before_filter :require_login, :only => ["index"]

  def index
    @reader = Reader.find(session[:reader_id])
    @readers = Reader.all
    @articles = Article.all
  end

  def welcome
    @reader = Reader.new
  end

  def login
    reader = Reader.authenticate(params[:email], params[:password])
    session[:reader_id] = reader.id if reader
    redirect_to "/"
  end

  def logout
    session[:reader_id] = nil
    redirect_to "/welcome"
  end
  
end
