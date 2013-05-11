class ArticlesController < ApplicationController
  respond_to :json

  def index
    if (params[:url] != 'undefined')
      text = Article.query_for_text params[:url]
      p text
      respond_with text
    else
      respond_with Article.all
    end
  end

  def show
    respond_with Article.find(params[:id])
  end
end
