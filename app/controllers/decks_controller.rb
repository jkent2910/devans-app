class DecksController < ApplicationController
  include CardHelper
  before_action :set_deck, only: [:show, :edit, :update, :destroy, :play_deck]

  def index
    @decks = Deck.all
  end

  def show
    @cards = @deck.cards
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(deck_params)

    respond_to do |format|
      if @deck.save
        format.html { redirect_to deck_path(@deck), notice: "Deck created!" }
        format.json { render :show, status: :created, location: @deck}
      else
        format.html { render :new }
        format.json { render json: @deck.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @deck.update(deck_params)
        format.html { redirect_to deck_path(@deck), notice: "Deck updated" }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @deck.destroy
    respond_to do |format|
      format.html { redirect_to decks_path, notice: 'Deck deleted.' }
      format.json { head :no_content }
    end
  end

  def play_deck
    @first_card = @deck.cards.first
    @first_question = @first_card.card_front.question
  end

  def get_next_card
    deck = Deck.find(Card.find(params[:card_id]).deck_id)
    card_id = params[:card_id]

    get_next_card_helper(deck, card_id)
  end

  private
  def set_deck
    @deck = Deck.find(params[:id])
  end

  def deck_params
    params.require(:deck).permit(:name, :category)
  end

end