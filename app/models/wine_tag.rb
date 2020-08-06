class WineTag < ApplicationRecord
  belongs_to :wine
  belongs_to :tag
end
