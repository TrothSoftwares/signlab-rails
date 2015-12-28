class Designimage < ActiveRecord::Base
  mount_uploader :url, DesignimageUploader
  attr_accessor :is_thumbnable
  belongs_to :item
end
