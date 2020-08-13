class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  has_many :ratings
  has_many :user_wines
  has_many :wines, through: :user_wines
end
