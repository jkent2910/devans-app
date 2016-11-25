class Card < ActiveRecord::Base
  belongs_to :deck
  has_one :card_front, dependent: :destroy
  has_one :card_back, dependent: :destroy

  validates :card_type, :deck_id, presence: true

  CARD_TYPES = ["Basic", "Multiple Choice"]
  enum card_type: CARD_TYPES
end
