class Rating < ApplicationRecord
has_many :user_wines
has_many :users, through: :user_wines
end