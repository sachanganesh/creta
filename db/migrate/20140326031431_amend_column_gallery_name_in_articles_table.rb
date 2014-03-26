class AmendColumnGalleryNameInArticlesTable < ActiveRecord::Migration
  def change
  	rename_column :articles, :gallery, :gallery_id
  end
end
