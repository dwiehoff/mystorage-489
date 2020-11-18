class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo

  validates :location, presence: true
  validates :volume, numericality: { greater_than: 0 }
  validates :price_per_month, numericality: { greater_than: 0 }
  validates :user, presence: true
end
