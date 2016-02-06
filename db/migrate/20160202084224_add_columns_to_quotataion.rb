class AddColumnsToQuotataion < ActiveRecord::Migration
  def change
    add_column(:quotations, :payment ,:text)
    add_column(:quotations, :delivery ,:text)
    add_column(:quotations, :power ,:text)
    add_column(:quotations, :storetext ,:text)
    add_column(:quotations, :note ,:text)
  end
end
