class Deck < ActiveRecord::Base
  has_many :cards, dependent: :destroy

  CATEGORIES = ["Spanish", "Science", "Rails", "HTML/CSS", "Other"]
  enum category: CATEGORIES

  validates :name, :category, presence: true
end
