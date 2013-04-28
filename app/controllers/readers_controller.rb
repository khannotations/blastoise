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
end
