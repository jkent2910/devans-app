class Card < ActiveRecord::Base
  belongs_to :deck
  has_one :card_front
  has_one :card_back

  CARD_TYPES = ["Basic", "Multiple Choice"]
  enum card_type: CARD_TYPES
end
