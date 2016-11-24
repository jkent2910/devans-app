class CardFrontsController < ApplicationController
  before_action :set_card_front, only: [:show, :edit, :update]

  def show
  end

  def new
    @card_front = CardFront.new
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:card_id])
  end

  def create
    @card_front = CardFront.new(card_front_params)
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:card_id])

    @card_front.card_id = @card.id

    respond_to do |format|
      if @card_front.save
        if @card.card_type == "Multiple Choice"
          format.html { redirect_to deck_path(@deck), notice: "Card created!" }
          format.json { render :show, status: :created, location: @card_front}
        else
          format.html { redirect_to new_deck_card_card_back_path(@deck, @card), notice: "Front created!" }
          format.json { render :show, status: :created, location: @card_front}
        end

      else
        format.html { render :new }
        format.json { render json: @card_front.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @card_front.update(card_front_params)
        format.html { redirect_to deck_card_path(@card), notice: "Card updated" }
      else
        format.html { render :edit }
      end
    end
  end

  private
  def set_card_front
    @card_front = CardFront.find(params[:id])
  end

  def card_front_params
    params.require(:card_front).permit(:question, :card_id, choices_attributes: [:id, :choice_text, :answer, :_destroy])
  end

end