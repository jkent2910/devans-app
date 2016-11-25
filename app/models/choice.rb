class Choice < ActiveRecord::Base
  belongs_to :card_front

  validates :choice_text, presence: true
end
