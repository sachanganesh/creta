require 'spec_helper'

describe "Articles interactions" do
	it "user can't create article without signing in" do
		visit articles_path
	end
end