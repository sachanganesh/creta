class GalleriesController < ApplicationController

	def index
		@galleries = Gallery.all
	end

	def cogitatus # Thoughts
		# @gallery = Gallery.assign("cogitatus")
		@gallery = Gallery.find()
		@articles = @gallery.articles
	end

	def politicus # Politics
		@gallery = Gallery.assign("politicus")
	end

	def parcus # Economics
		@gallery = Gallery.assign("parcus")
	end
	
	def ipsum # Computers
		@gallery = Gallery.assign("ipsum")
	end
	
	def scientia_physica # Physical sciences
		@gallery = Gallery.assign("scientia_physica")
	end
	
	def scientia_naturalis # Natural sciences
		@gallery = Gallery.assign("scientia_naturalis")
	end
	
	def proelium # Conflict
		@gallery = Gallery.assign("proelium")
	end
	
	def humanitas # Humanities (Culture)
		@gallery = Gallery.assign("humanitas")
	end
end
