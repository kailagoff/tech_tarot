class MinorsController < ApplicationController

  def index
    @cards = Card.all
  end

end
