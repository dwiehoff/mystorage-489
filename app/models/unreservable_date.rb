class UnreservableDate < ApplicationRecord
  belongs_to :space

  validates :unreservable_from, :unreservable_to, presence: true, uniqueness: true
  validate :end_date_after_start_date

  def end_date_after_start_date
    return if unreservable_to.blank? || unreservable_from.blank?

    errors.add(:unreservable_to, "must be after the start date") if unreservable_to < unreservable_from
  end
end
