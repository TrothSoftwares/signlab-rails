class Designimage < ActiveRecord::Base
  has_paper_trail
  mount_uploader :url, DesignimageUploader
  attr_accessor :is_thumbnable
  belongs_to :item
end
