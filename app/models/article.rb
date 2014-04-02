class Article < ActiveRecord::Base
	belongs_to :user
	belongs_to :gallery
	validates_presence of :title
end