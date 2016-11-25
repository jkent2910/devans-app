class CardFront < ActiveRecord::Base
  belongs_to :card
  has_many :choices

  accepts_nested_attributes_for :choices, reject_if: :all_blank, allow_destroy: true

  validates :question, :card_id, presence: true
end
