class Admin::ArticlesController < Admin::ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all.order_by_descending
  end

  def show
  end

  def new
    @article = Article.new
    @article.article_images_build
  end

  def edit
    @article.article_images_build
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to admin_article_path(@article), notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to admin_article_path(@article), notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to admin_articles_url, notice: 'Article was successfully destroyed.'
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:entry_at, :title, :content, :published, :catch_image, { article_images_attributes: [:id, :image] })
    end
end
