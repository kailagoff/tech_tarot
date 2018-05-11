class MajorsController < ApplicationController

  def index
    @cards = Card.select(:arcana)
  end

end
