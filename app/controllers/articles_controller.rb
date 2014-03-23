class ArticlesController < ApplicationController
  include ArticlesHelper
  def index # Show list of articles
    @articles = Article.all
  end

  def create # Action called by New method
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article) # Redirect to new article's Show page
  end

  def new # Make new article
    @article = Article.new
  end

  def edit # Edit article
    find_article
  end

  def show # Show individual articles
    find_article
  end

  def update # Action called by Edit method
    find_article
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy # Action calld to delete article entry
    find_article
    @article.destroy
    redirect_to articles_path
  end
end
