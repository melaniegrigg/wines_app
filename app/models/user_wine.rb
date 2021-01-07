class UserWine < ApplicationRecord
  belongs_to :user
  belongs_to :wine
  belongs_to :rating
end
