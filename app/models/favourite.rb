class Favourite < ApplicationRecord
  belongs_to :artwork
  belongs_to :user
end
