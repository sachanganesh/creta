class Gallery < ActiveRecord::Base
	has_many :articles
	validates_presence_of :id, :name
	validates_uniqueness_of :id, :name
	include GalleriesHelper
	protected
		def self.assign(text)
			id = determine_id(text)
			self.find(id)
		end
end
