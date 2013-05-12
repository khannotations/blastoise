class ReadersController < ApplicationController

  def create
    @reader = Reader.create(params[:reader])
    if @reader.save
      session[:reader_id] = @reader.id
      redirect_to "/"
    else
      p @reader.errors
      redirect_to "/welcome"
    end
  end

  def current_user
    render json: Reader.find_by_id(session[:reader_id])
  end
end
