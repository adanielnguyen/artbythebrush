class Gallery < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :curates
  has_many :artworks, through: :curate
end
