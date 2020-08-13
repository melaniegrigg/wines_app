class Rating < ApplicationRecord
has_many :users
has_many :user_wines
end