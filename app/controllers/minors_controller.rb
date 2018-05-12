class MinorsController < ApplicationController

  def index
    @cards = Card.all.order(:id)
    @amazon_minor = @cards.minor_amazon
    @microsoft_minor = @cards.minor_microsoft
    @google_minor = @cards.minor_google
    @oracle_minor = @cards.minor_oracle
  end

end
