class Deck < ApplicationRecord
  has_many :cards, dependent: :destroy
  validates :name, presence: true, length: {minimum: 1}
end
