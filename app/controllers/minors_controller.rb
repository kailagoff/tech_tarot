class MinorsController < ApplicationController

  def index
    @cards = Card.all.order(:id)
    @amazon_minor = @cards.minor_amazon
    @microsoft_minor = @cards.minor_microsoft
  end

end
