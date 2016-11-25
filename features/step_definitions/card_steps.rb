Then(/^there should be a card created$/) do
  expect(Card.all.count).to eq(1)
end

Then(/^there should be a card with a front and back created$/) do
  card = Card.last.id
  expect(CardFront.where(card_id: card)).to_not be_nil
  expect(CardBack.where(card_id: card)).to_not be_nil
end

Then(/^there should be a card created for the "([^"]*)" deck$/) do |deck_name|
  deck = Deck.find_by(name: deck_name).id
  expect(Card.last.deck_id).to eq(deck)
end

Then(/^there should be a card with question "([^"]*)"$/) do |question|
  expect(CardFront.find_by(question: question)).to_not be_nil
end

Then(/^there should be a card with one choice$/) do
  card = Card.last.id
  card_front = CardFront.where(card_id: card).last
  expect(card_front.choices.count).to eq(1)
end
