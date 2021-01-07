class Wine < ApplicationRecord
  has_many :ratings
  has_many :user_wines
  has_many :users, through: :user_wines
  has_many :wine_tags
  has_many :tags, through: :wine_tags
end
