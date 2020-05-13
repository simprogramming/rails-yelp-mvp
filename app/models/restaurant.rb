class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :address
  # validates :name, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}
end
