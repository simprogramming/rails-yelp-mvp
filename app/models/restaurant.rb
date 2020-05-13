class Restaurant < ApplicationRecord
  has_many :reviews, dependant: :destroy

  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}
  validates :rating, length: {in: 1...5}
end
