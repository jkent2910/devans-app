class CardBack < ActiveRecord::Base
  belongs_to :card

  validates :answer, :card_id, presence: true
end
