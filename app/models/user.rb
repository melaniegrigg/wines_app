class User < ApplicationRecord
  has_many :ratings
  has_many :wine_tags
  has_many :wines, through: :wine_tags
end
