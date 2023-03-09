class User < ApplicationRecord
  has_secure_password
  has_many :comments
  validates :username,
            :first_name,
            :last_name,
            :email,
            :password,
            presence: true
  validates :email,
            format: {
              with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
            }
  validates :email, uniqueness: true
  validates :password, length: { minimum: 8 }
  validates :password, confirmation: true
end
