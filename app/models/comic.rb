class Comic < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }, allow_nil: true
  validates :category, inclusion: { in: %w(boy girl) }
end
