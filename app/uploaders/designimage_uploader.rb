# encoding: utf-8
class DesignimageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave
  include CarrierWave::MiniMagick


  version :thumb do
    process resize_to_fit: [200, 300]
  end

end
