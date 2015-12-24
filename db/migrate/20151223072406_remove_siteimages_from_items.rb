class RemoveSiteimagesFromItems < ActiveRecord::Migration
  def change
    remove_column(:items, :siteimages)
  end
end
