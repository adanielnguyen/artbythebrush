class CollectionFavourite < ApplicationRecord
  has_many :collection
  has_many :favourite
end
