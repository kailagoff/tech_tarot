class PagesController < ApplicationController

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: "Search can't be blank.") and return
    else
      @parameter = params[:search].downcase
      @results = Card.all.where("lower(card_name) LIKE :search", search: @parameter)
      binding.pry
    end
  end

end
