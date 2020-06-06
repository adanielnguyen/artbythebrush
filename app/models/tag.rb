class Tag < ApplicationRecord
  has_many :follows, as: :record
end
