class Musical < ApplicationRecord
  has_many :reviews
  
  attachment :image
end
