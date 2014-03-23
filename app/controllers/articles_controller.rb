class ArticlesController < ApplicationController
  def index # Show list of articles
    @articles = Articles.all
  end

  def create
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def show # Show individual articles
    @article = Articles.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
