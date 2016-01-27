class Item < ActiveRecord::Base
  has_paper_trail
  belongs_to :project
  belongs_to :itemtype
  belongs_to :jobtype
  has_many :siteimages , :dependent => :destroy
  has_many :designimages , :dependent => :destroy
end
