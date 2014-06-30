# encoding: utf-8

class KitUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
#  include CarrierWave::RMagick

  process :convert => 'png'
  process :resize_and_pad => [600, 380]

  version :common do
  	process :resize_and_pad => [300, 190]
  end

  version :retina do
  	process :resize_and_pad => [600, 380]
  end
  
end
