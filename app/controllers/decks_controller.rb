class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
      @deck = Deck.find(params[:id])
  end

  def new
  end

  def create
    @deck = Deck.create(decks_params)
    redirect_to @deck
  end

  private
  def decks_params
    params.require(:deck).permit(:name, :character_class, :style)
  end
end
