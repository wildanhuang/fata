class Imaging < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
