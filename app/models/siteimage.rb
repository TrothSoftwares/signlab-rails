class Siteimage < ActiveRecord::Base
  # mount_uploaders :url, SiteimageUploader
  mount_uploader :url, SiteimageUploader
  belongs_to :item
end
