class Siteimage < ActiveRecord::Base
  # mount_uploaders :url, SiteimageUploader

  mount_uploader :url, SiteimageUploader
  attr_accessor :is_thumbnable
  belongs_to :item
end
