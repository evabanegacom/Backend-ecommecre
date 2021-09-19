class Order < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :email, presence: true
  validates :total, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  # mount_uploader :avatar, AvatarUploader

end
