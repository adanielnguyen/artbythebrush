class CollectionFavourite < ApplicationRecord
  belongs_to :collection
  belongs_to :favourite
end
