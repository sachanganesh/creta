require 'spec_helper'

describe Article do
	context "is invalid when" do
		it "doesn't have an id" do
			article = Article.new(title: "title", user_id: 1, gallery_id: 1)
			article.should_not be_valid
		end
		it "doesn't have a title" do
			article = Article.new(id: 1, user_id: 1, gallery_id: 1)
			article.should_not be_valid
		end
		it "doesn't belong to a user" do
			article = Article.new(id: 1, title: "title", gallery_id: 1)
			article.should_not be_valid
		end
		it "doesn't belong to a gallery" do
			article = Article.new(id: 1, title: "title", user_id: 1)
			article.should_not be_valid
		end
	end
	it "should change the number of articles" do
		article = Article.new(id: 1, title: "title", user_id: 1, gallery_id: 1)
		expect { article.save }.to change { Article.count }.by(1)
	end
	it "requires authentication to write" do
		visit articles_path
		expect(page).to have_content("Sign in")
	end
end