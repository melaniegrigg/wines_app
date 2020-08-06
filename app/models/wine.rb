class Wine < ApplicationRecord
  has_many :ratings
  has_many :users
  has_many :tags, through: :wine_tags
end
