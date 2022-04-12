class Review < ApplicationRecord
  belongs_to :user
  belongs_to :musical
  belongs_to :category
end
