class ArtworkTag < ApplicationRecord
  belongs_to :artwork
  acts_as_taggable_on :tags
end
