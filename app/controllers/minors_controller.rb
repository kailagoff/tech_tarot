class MinorsController < ApplicationController

  def index
    @cards = Card.all.order(:id)
    @amazon_minor = @cards.minor_amazon
  end

end
