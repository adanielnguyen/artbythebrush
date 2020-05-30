class Tag < ApplicationRecord
  has_many :followed_relationships, as: :record
end
