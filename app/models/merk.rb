class Merk < ActiveRecord::Base
  mount_uploader :background, BackgroundUploader

  has_many :products
end
