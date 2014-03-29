module ArticlesHelper
	private
		def find_article
			@article = Article.find(params[:id])
		end
		def article_params
			params.require(:article).permit(:title, :subtitle, :body)
		end
		def find_user_articles
			@articles = Article.all
			@articles_list = Array.new
			@articles.each do |article|
				@articles_list.push(article)
			end
		end
end
