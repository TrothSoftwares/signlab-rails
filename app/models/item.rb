class Item < ActiveRecord::Base


  belongs_to :project
  belongs_to :itemtype
  belongs_to :jobtype
  has_many :siteimages , :dependent => :destroy
  has_many :designimages , :dependent => :destroy
end
