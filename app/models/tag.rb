class Tag < ApplicationRecord
  has_many :follows, as: :record
  has_many :fans, through: :follows
end
