class DecksController < ApplicationController
  before_action :set_deck, only: [:show, :edit, :update, :destroy]

  def index
    @decks = Deck.all
  end

  def show
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

  private
  def set_deck
    @deck = Deck.find(params[:id])
  end

  def deck_params
    params.require(:deck).permit(:name, :category)
  end

end