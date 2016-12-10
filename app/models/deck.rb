class Deck < ActiveRecord::Base
  has_many :cards, dependent: :destroy

  CATEGORIES = ["Rails", "Other Programming", "HTML/CSS", "History", "Science", "Vocabulary", "Other"]
  enum category: CATEGORIES

  validates :name, :category, presence: true
end
