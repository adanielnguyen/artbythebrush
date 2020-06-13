class Collection < ApplicationRecord
  belongs_to :user
  
  has_many :collection_favourites
  has_many :favourites, through: :collection_favourites
  has_many :artworks, through: :favourites
end
