class ArticlesController < ApplicationController
  respond_to :json

  def index
    if (params[:url] != 'undefined')
      respond_with Article.query_for_text params[:url]
    else
      respond_with Article.all
    end
  end

  def show
    respond_with Article.find(params[:id])
  end
end
