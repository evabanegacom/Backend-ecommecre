class Product < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader
  mount_uploader :avatartwo, AvatartwoUploader
  has_many :reviews, dependent: :destroy
end
