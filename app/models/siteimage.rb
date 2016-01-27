class Siteimage < ActiveRecord::Base
  has_paper_trail

  mount_uploader :url, SiteimageUploader
  attr_accessor :is_thumbnable
  belongs_to :item
end
