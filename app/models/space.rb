class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :unreservable_dates
  has_one_attached :image

  validates :location, presence: true
  validates :volume, numericality: { greater_than: 0 }
  validates :price_per_month, numericality: { greater_than: 0 }
  validates :user, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
