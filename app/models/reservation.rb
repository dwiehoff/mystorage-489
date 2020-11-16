class Reservation < ApplicationRecord
  belongs_to :space
  belongs_to :user

  validates_date :start_date, presence: true
  validates_date :end_date, presence: true
  validates :is_confirmed, inclusion: [true, false]
end
