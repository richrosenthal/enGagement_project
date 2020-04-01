class User < ActiveRecord::Base
  has_many :gages
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true

end
