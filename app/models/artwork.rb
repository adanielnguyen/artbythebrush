class Artwork < ApplicationRecord
  has_many_attached :images
  belongs_to :user
  acts_as_taggable_on :tags

  validates :name, :description, :genre, :medium, :date_created, :images, presence: true
end
