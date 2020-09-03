class Tag < ApplicationRecord
  has_many :user_wines
  has_many :users, through: :user_wines
  has_many :wine_tags
  has_many :wines, through: :wine_tags
  belongs_to :type
end
