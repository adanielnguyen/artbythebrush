class ArtworkTag < ApplicationRecord
  belongs_to :tag
  belongs_to :artwork

  validates :tag, uniqueness: { scope: :artwork, message: "was already added"}
end
