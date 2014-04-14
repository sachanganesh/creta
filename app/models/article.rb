class Article < ActiveRecord::Base
	belongs_to :user
	belongs_to :gallery
	validates_presence_of :id, :title, :user_id, :gallery_id
end