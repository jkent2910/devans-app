class CardBacksController < ApplicationController
  before_action :set_card_back, only: [:show, :edit, :update]

  def show
  end

  def new
    @card_back = CardBack.new
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:card_id])
  end

  def create
    @card_back = CardBack.new(card_back_params)
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:card_id])

    @card_back.card_id = @card.id

    respond_to do |format|
      if @card_back.save
        format.html { redirect_to deck_path(@deck), notice: "Card created!" }
        format.json { render :show, status: :created, location: @card_back}
      else
        format.html { render :new }
        format.json { render json: @card_back.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @card_back.update(card_back_params)
        format.html { redirect_to deck_cards_path(@deck), notice: "Card updated" }
      else
        format.html { render :edit }
      end
    end
  end

  private
  def set_card_back
    @card_back = CardBack.find(params[:id])
  end

  def card_back_params
    params.require(:card_back).permit(:answer, :card_id)
  end

end