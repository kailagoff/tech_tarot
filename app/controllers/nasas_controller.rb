class NasasController < ApplicationController

  def index
    @card = Card.oneCard()
  	@nasa_info = Nasa.get_api_info(params[:date] || Time.now.in_time_zone('US/Eastern').to_date.to_s)
  	@media_type_is_video = @nasa_info['media_type'].eql?("video")
  end

end