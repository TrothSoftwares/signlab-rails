class Createproject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :location
      #t.references :customer, index: true, foreign_key: true
      #t.references :agent, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
