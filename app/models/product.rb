class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :merk
end
