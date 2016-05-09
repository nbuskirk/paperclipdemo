class ArticlesController < ApplicationController
  # Other CRUD actions omitted
  def index
  @articles = Article.all
  end
  def new
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end
  def create
    @article = Article.new(params[:article])

    if @article.save
      redirect_to @article, notice: 'article was successfully created.'
     else
       render action: 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:avatar, :title, :text)
  end
end
