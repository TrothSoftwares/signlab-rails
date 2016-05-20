class AddStatusfieldsToProject < ActiveRecord::Migration
  def change
      add_column(:projects, :fstatusom ,:string)
      add_column(:projects, :fstatusgm ,:string)
      add_column(:projects, :fstatusis ,:string)
      add_column(:projects, :fstatusps ,:string)
      add_column(:projects, :iscomment ,:string)
      add_column(:projects, :pscomment ,:string)
  end
end
