class MajorsController < ApplicationController

  def index
    @cards = Card.all
  end

end
