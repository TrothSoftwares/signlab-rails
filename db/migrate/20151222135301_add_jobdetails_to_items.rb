class AddJobdetailsToItems < ActiveRecord::Migration
  def change
    add_column(:items, :surveydetails ,:string)
    add_column(:items, :technique ,:string)
    add_column(:items, :material ,:string)
    add_column(:items, :team ,:string)
    add_column(:items, :designspecifications ,:string)
    add_column(:items, :designnotes ,:text)
  end
end
