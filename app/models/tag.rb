class Tag < ApplicationRecord
  has_many :users
  has_many :wine_tags
  has_many :es, through: :wine_tags
end
