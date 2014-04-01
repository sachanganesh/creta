class Article < ActiveRecord::Base
	belongs_to :user
		def self.find_user_articles(user)
			array = Array.new
			articles = Article.all
			articles.each do |article|
				array.push(article) if user == article[:user_id]
			end
			return array
		end
end