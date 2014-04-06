class AddColumnToGallery < ActiveRecord::Migration
  def change
  	add_column :galleries, :name, :string
  end
end
