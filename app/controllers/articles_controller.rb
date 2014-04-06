class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  protected
    def index # Show list of articles
      @articles = Article.all
    end

    def create # Action called by New method
      @article = current_user.articles.build(article_params)
      @article.save
      if @article.save
        redirect_to @article, notice: "#{@article.title} was published!" # Redirect to new article's Show page
      else
        render action: 'new'
      end
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
      if @article.update(article_params)
        redirect to @article, notice: "#{@article.title} was updated!"
      else 
        render action: 'edit'
      end
    end

    def destroy # Action called to delete article entry
      find_article
      @article.destroy
      flash.alert = "#{@article.title} was deleted!"
      redirect_to articles_path
    end
end
