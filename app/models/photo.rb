class Photo < ActiveRecord::Base
  belongs_to :album
  has_many :comments

  mount_uploader :image, ImageUploader
end
