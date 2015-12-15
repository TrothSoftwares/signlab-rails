class AddRefForItems < ActiveRecord::Migration
  def change
    add_reference :items, :project, index: true, foreign_key: true
    add_reference :items, :jobtype, index: true, foreign_key: true
    add_reference :items, :itemtype, index: true, foreign_key: true
  end
end
