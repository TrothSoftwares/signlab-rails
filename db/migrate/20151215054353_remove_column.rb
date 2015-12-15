class RemoveColumn < ActiveRecord::Migration
  def change
    remove_reference(:items, :jobtype, index: true, foreign_key: true)
  end
end
