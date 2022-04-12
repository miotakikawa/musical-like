class Musical < ApplicationRecord
  has_many_attached :reviews, :genres
end
