class ArticlesController < ApplicationController
  respond_to :json

  def index
    respond_with Article.all
  end

  def show
    respond_with Article.find(params[:id])
  end

  def query
    if params[:url] != 'undefined'
      respond_with Article.query_for_text params[:url]
    else
      respond_with nil
    end
  end
end
