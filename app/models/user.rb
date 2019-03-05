class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true,format: { with: /[A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]/ }
  validates :name, length: { maximum: 15 }
  #validates :password, presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i }
  
  has_secure_password
  has_many :topics
end
