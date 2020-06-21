class Gallery < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :curates
  has_many :artworks, through: :curate

  validates :name, :description, :image, presence: true
  validates :start_date, :end_date, presence: true

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
