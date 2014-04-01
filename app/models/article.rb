class Article < ActiveRecord::Base
	belongs_to :user, :gallery
end