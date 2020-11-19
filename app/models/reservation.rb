class Reservation < ApplicationRecord
  belongs_to :space
  belongs_to :user
  has_one_attached :image

  validates :start_date, :end_date, presence: true, availability: true
  validate :end_date_after_start_date
  validates :is_confirmed, inclusion: [true, false]

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end
