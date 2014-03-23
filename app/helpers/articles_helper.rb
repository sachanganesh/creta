module ArticlesHelper
	private
		def article_params
			params.require(:article).permit(:title, :subtitle, :body)
		end
end
