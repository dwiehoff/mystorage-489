class Review < ApplicationRecord
  belongs_to :reservation

  validates :title, length: { minimum: 10, maximum: 50 }, allow_blank: true
  validates :content, length: { minimum: 15 }
  validates :rating, numericality: { greater_than: 0, less_than: 6 }
end
