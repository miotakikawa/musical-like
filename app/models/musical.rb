class Musical < ApplicationRecord
  has_many :reviews
  has_many :categories
  attachment :image
end
