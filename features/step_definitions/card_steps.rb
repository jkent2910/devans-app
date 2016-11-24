Then(/^there should be a card created$/) do
  expect(Card.all.count).to eq(1)
end

Then(/^there should be a card with a front and back created$/) do
  card = Card.last.id
  expect(CardFront.where(card_id: card)).to_not be_nil
  expect(CardBack.where(card_id: card)).to_not be_nil
end
