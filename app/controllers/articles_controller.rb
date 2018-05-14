class ArticlesController < ApplicationController
  def show
    api_call = Article.new
    @response = api_call.make_NYT_API_call()
  end
end
