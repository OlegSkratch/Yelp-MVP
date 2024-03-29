class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, presence: true, acceptance: { accept: %w[chinese italian japanes french belgian japanese]}
  validates :name, presence: true
  validates :address, presence: true
end
