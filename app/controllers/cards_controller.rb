class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
   @card = Card.new(card_params)
   if @card.save
     redirect_to  cards_path
   else
     render :new
   end
 end

 def edit
   @card = Card.find(params[:id])
  end

  def update
    @card= Card.find(params[:id])
    if @card.update(card_params)
      redirect_to cards_path
    else
      render :edit
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to lists_path
  end

private
 def card_params
   params.require(:card).permit(:card_name, :card_content, :suit, :arcana)
 end

end