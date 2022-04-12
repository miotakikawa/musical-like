class Musical < ApplicationRecord
  has_many_attached :reviews
  has_many_attached :genres
end
