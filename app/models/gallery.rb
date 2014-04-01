class Gallery < ActiveRecord::Base
	has_many :articles
	include GalleriesHelper
	protected
		def self.assign(text)
			id = determine_id(text)
			self.find(id)
		end
end
