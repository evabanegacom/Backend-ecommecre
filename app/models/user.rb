class User < ApplicationRecord
  has_secure_password
  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy

  def as_json(options = {})
    super(options.merge({ except: %i[password_digest created_at updated_at] }))
  end
end
