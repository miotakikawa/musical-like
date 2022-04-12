class Category < ApplicationRecord
  has_many_attached :genres
end
