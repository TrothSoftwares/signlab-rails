class CreateEnquiry < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.datetime :date
      t.integer :no
      #t.reference :enquiries, :project, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
