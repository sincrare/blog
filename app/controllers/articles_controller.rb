class ArticlesController < ApplicationController
  # GET /articles
  def index
    @articles = Article.all.order_by_descending
  end

  # GET /articles/1
  def show
    @article = Article.find(params[:id])
  end
end
