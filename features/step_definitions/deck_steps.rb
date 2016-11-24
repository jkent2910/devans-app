Then(/^there should be a deck with name "([^"]*)" created$/) do |name|
  deck = Deck.last
  expect(deck.name).to eq(name)
end

Given(/^there is a deck with name "([^"]*)" in the "([^"]*)" category$/) do |deck_name, deck_category|
  FactoryGirl.create(:deck, name: deck_name, category: deck_category)
end

Then(/^there should not be a deck named "([^"]*)"$/) do |deck_name|
  deck = Deck.find_by(name: deck_name)
  expect(deck).to be_nil
end

Then(/^there should be a deck named "([^"]*)"$/) do |deck_name|
  deck = Deck.where(name: deck_name).count
  expect(deck).to eq(1)
end