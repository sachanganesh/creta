class ArticlesController < ApplicationController
  include articles_helper

  def index # Show list of articles
    @articles = Articles.all
  end

  def create # Action called by New method
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article) # Redirect to new article's Show page
  end

  def new # Make new article
    @article = Article.new
  end

  def edit
  end

  def show # Show individual articles
    @article = Articles.find(params[:id])
  end

  def update
  end

  def destroy # Delete article entry
    @article = Articles.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
end
