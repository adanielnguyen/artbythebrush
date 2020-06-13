class Favourite < ApplicationRecord
  belongs_to :artwork
  belongs_to :user
  has_many :collection_favourites
end
