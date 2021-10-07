class Product < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader
  mount_uploader :avatar_two, AvatarUploader
  mount_uploader :avatar_three, AvatarUploader
  mount_uploader :avatar_four, AvatarUploader
  mount_uploader :avatar_five, AvatarUploader
  has_many :reviews
end
