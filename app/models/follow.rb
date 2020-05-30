class Follow < ApplicationRecord
  belongs_to :followed_relationship
  belongs_to :user
  has_many :followed_relationships, as: :record
end
