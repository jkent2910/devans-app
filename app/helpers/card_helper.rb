module CardHelper

  def get_next_card_helper(deck, card_id)
    card_ids = Deck.find(deck).cards.pluck(:id)
    larger_ids = []
    card_ids.each do |num|
      unless num < card_id.to_i
        larger_ids << num
      end
    end
    sorted = larger_ids.sort
    if sorted.length <= 1
      deck = Deck.find(deck)
      deck_count = Deck.find(deck).total_count
      deck.update_attributes(total_count: deck_count + 1)
      redirect_to decks_path, notice: "You're done!"
    else
      next_highest_id = sorted[1]
      next_card = Card.find(next_highest_id)
      redirect_to card_front_path(next_card.card_front), notice: "Great job"
    end
  end

end
