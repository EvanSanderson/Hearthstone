class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
      @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def create
    @deck = Deck.create(decks_params)

    if @deck.save
    redirect_to @deck
  else
    render 'new'
  end

  end

def update
  @deck = Deck.find(params[:id])

  if @deck.update(decks_params)
    redirect_to @deck
  else
    render 'edit'
  end
end

def destroy
  @deck = Deck.find(params[:id])
  @deck.destroy
  redirect_to 'index'
end

  private
  def decks_params
    params.require(:deck).permit(:name, :character_class, :style)
  end
end
