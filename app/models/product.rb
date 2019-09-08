class Product < ApplicationRecord
  validates :name, presence: true
  validates :picture, presence: true
  validates :category_id, presence: true
  validates :brand_id, presence: true
  validates :price, presence: true
  mount_uploader :picture, PictureUploader
  belongs_to :category
  belongs_to :brand
end
