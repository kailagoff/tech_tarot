class MajorsController < ApplicationController

  def index
    @cards = Card.all.order(:id)
    @arcana_major = @cards.major_arcana
  end

end
