class ArtworkTag < ApplicationRecord
  belongs_to :tag
  belongs_to :artwork
end
