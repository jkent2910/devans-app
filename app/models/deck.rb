class Deck < ActiveRecord::Base
  CATEGORIES = ["Spanish", "Science", "Rails", "HTML/CSS", "Other"]
  enum category: CATEGORIES
end
