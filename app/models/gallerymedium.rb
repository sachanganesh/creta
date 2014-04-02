class GalleryMedium
	def initialize(gallery)
		@gallery = gallery
	end

	protected
		def set_articles
			articles = Articles.all
			@articles = @gallery.articles
		end
end