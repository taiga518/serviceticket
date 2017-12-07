class Item < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 3, message: "too short"}
  validates :body, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
end
