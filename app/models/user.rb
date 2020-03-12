class User < ActiveRecord::Base
  has_many :gages
  validates_presence_of :name, :email, :password
end
