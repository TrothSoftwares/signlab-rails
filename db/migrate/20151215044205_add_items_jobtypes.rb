class AddItemsJobtypes < ActiveRecord::Migration

  def self.up
    create_table :items_jobtypes, :id => false do |t|
      t.integer :item_id
      t.integer :jobtype_id
    end
  end

  def self.down
    drop_table :items_jobtypes
  end
end
