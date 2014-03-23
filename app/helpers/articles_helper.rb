module ArticlesHelper
	private
		def find_article
			@article = Articles.find(params[:id])
		end
		def article_params
			params.require(:article).permit(:title, :subtitle, :body)
		end
end
