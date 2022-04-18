class Category < ApplicationRecord
  has_many :genres
  has_many :reviews
  has_many :musicals, through: :reviews
end
