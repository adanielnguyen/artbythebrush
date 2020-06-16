class Gallery < ApplicationRecord
  has_many_attached :images
  belongs_to :user
  has_many :curates
  has_many :artworks, through: :curate
end
