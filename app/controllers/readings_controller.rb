class ReadingsController < ApplicationController

  def index
    @cards = Card.threeCards()
    @focus = Card.focusCard()
    respond_to do |format|
        format.html 
        format.js
    end
  end
end
