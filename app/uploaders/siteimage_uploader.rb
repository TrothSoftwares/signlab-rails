# encoding: utf-8

class SiteimageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave
  include CarrierWave::MiniMagick
  # storage :file

  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end

  version :thumb do
    process resize_to_fit: [200, 300]
  end


  # Cloudinary::Uploader.upload("http://www.example.com/image.jpg", :public_id => 'sample_remote')
  # Cloudinary::Uploader.upload('f2a1gs6wqn0vbbkrsk3q.png')


end
