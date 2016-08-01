class CardsController < ApplicationController

  def create
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.create(card_params)
    redirect_to deck_path(@deck)
end

def destroy
  @deck = Deck.find(params[:deck_id])
  @card = @deck.cards.find(params[:id])
  @card.destroy

  redirect_to deck_path(@deck)
end


private
  def card_params
    params.require(:card).permit(:name, :effect, :attack, :defense)
end

end
