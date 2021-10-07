class Product < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader
  mount_uploader :avatar_two, AvatarTwoUploader
  has_many :reviews
end
