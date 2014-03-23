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
    find_article
  end

  def show # Show individual articles
    find_article
  end

  def update
  end

  def destroy # Delete article entry
    find_article
    @article.destroy
    redirect_to articles_path
  end
end
