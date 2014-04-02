class Gallery < ActiveRecord::Base
	has_many :articles
	validates_presence_of :id, :name
	validates_uniqueness_of :id, :name
	protected
		def self.assign(action)
			gallery = GalleryID.new(action)
			id = gallery.get_id!
			self.find(id) # Technically, should be in GalleryID class
		end
end
