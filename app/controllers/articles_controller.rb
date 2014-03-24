class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  include ArticlesHelper
  def index # Show list of articles
    @articles = Article.all
  end

  def create # Action called by New method
    @article = current_user.articles.build(article_params)
    @article.save
    flash.notice = "#{@article.title} was published!"
    redirect_to article_path(@article) # Redirect to new article's Show page
  end

  def new # Make new article
    @article = current_user.articles.build
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
    flash.notice = "#{@article.title} was updated!"
    redirect_to article_path(@article)
  end

  def destroy # Action called to delete article entry
    find_article
    @article.destroy
    flash.notice = "#{@article.title} was deleted!"
    redirect_to articles_path
  end

  def magazine
    @articles = Article.all
  end
end
