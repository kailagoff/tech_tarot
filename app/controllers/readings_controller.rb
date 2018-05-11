class ReadingsController < ApplicationController

  def index
    @cards = Card.threeCards()
  end

end
