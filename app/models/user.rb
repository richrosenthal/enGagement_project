class User < ActiveRecord::Base
  has_many :gages
  has_secure_password
  validates :email, uniqueness: true

end
