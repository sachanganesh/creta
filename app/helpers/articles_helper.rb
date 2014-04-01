module ArticlesHelper

	protected
		def find_article
			@article = Article.find(params[:id])
		end
		def article_params
			params.require(:article).permit(:title, :subtitle, :body)
		end
end
