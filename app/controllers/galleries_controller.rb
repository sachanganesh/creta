class GalleriesController < ApplicationController

	def index
		@galleries = Gallery.all
	end

  def create
  end

  def new
  end

  def edit
  end

  def show # Show individual galleries
    find_gallery
    find_articles
  end

  def update
  end

  def destroy
  end

	protected
		def find_by_name(action)
			Gallery.find_by(name: params[action])
		end

		def find_gallery
			@gallery = Gallery.find(params[:id])
		end

		def find_articles
      @articles = @gallery.articles
		end
end
