# encoding: utf-8

class DesignimageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process resize_to_fit: [200, 300]
  end

end
