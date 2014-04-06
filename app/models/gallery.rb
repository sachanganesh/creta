class Gallery < ActiveRecord::Base
	has_many :articles
	validates_presence_of :id, :name
	validates_uniqueness_of :id, :name
end
