class AddJobtypeToItems < ActiveRecord::Migration
  def change
    add_reference(:items, :jobtype, index: true, foreign_key: true)
  end
end
