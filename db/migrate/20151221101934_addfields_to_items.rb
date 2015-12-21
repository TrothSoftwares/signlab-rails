class AddfieldsToItems < ActiveRecord::Migration
  def change
    add_column(:items, :unit ,:string)
    add_column(:items, :rate ,:string)
    add_column(:items, :amount ,:string)
  end
end
