class Item < ActiveRecord::Base
  belongs_to :project
  belongs_to :itemtype
  belongs_to :jobtype
end
