class AddSiteimagesToItems < ActiveRecord::Migration
  def change
    add_column :items, :siteimages, :longtext
  end
end
