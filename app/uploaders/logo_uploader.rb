class LogoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process resize_to_fill: [50, 50]

  # Choose what kind of storage to use for this uploader:
  if Rails.env.development?
    storage :file
  else
    storage :fog
  end

  def store_dir
    "demo/sc/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  def extension_white_list
    %w(jpg jpeg gif png)
  end
  
end