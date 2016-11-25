class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]
  include CardHelper

  def index
    @cards = Card.all
  end

  def show
  end

  def new
    @card = Card.new
    @deck = Deck.find(params[:deck_id])
  end

  def create
    @card = Card.new(card_params)
    @deck = Deck.find(params[:deck_id])

    @card.deck_id = @deck.id
    respond_to do |format|
      if @card.save
        format.html { redirect_to new_deck_card_card_front_path(@deck, @card), notice: "Card created!" }
        format.json { render :show, status: :created, location: @card}
      else
        format.html { render :new }
        format.json { render json: @card.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
    @deck = Deck.find(params[:deck_id])
  end

  def update
    @deck = Deck.find(params[:deck_id])
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to deck_path(@deck), notice: "Card updated" }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to decks_path, notice: 'Card deleted.' }
      format.json { head :no_content }
    end
  end


  def check_answer
    card_front = CardFront.find(params[:card_front_id])
    right_answer = card_front.choices.find_by(answer: true).choice_text
    if params[:checked_value] == right_answer

      deck_id = Card.find(card_front.card_id).deck_id
      get_next_card_helper(deck_id, card_front.card_id)
    else
      redirect_to card_front_path(card_front), notice: "Try again"
    end
  end

  private
  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:name, :card_type, :deck_id)
  end

end