class Follow < ApplicationRecord
  belongs_to :fan, class_name: 'User'
  belongs_to :record, polymorphic: true
end
