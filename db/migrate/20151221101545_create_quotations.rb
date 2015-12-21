class CreateQuotations < ActiveRecord::Migration
  def change
    create_table :quotations do |t|
      t.datetime :date
      t.string :subject
      t.text :body
      t.references :project, index: true, foreign_key: true
      t.timestamps
    end
  end
end
