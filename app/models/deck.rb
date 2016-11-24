class Deck < ActiveRecord::Base
  has_many :cards

  CATEGORIES = ["Spanish", "Science", "Rails", "HTML/CSS", "Other"]
  enum category: CATEGORIES
end
