class ImageUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    APP_ROOT.join('public', 'uploads')
  end
end
