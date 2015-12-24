class SiteImages < ActiveRecord::Migration
  def change
    create_table :siteimages do |t|
      t.string :description
      t.text :url
      t.references :item, index: true, foreign_key: true
      t.timestamps
    end
  end
end
