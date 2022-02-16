class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, numericality: {integer}
  validates :rating, format: { with :/\A[0-5]/ }
end
