class MajorsController < ApplicationController

  def index
    @cards = Card.all
    @arcana_major = @cards.major_arcana
  end

end
