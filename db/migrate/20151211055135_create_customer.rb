class CreateCustomer < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :contactname
      t.string :contactno
      t.string :othcontactno
      t.string :othrefdetails
      t.timestamps null: false
    end
  end
end
