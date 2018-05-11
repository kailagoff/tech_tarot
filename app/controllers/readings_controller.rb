class ReadingsController < ApplicationController

  def index
    @cards = Card.threeCards()
    @focus = Card.focusCard()
  end

end
