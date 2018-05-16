class Article
  def make_NYT_API_call
    uri = URI("https://api.nytimes.com/svc/search/v2/articlesearch.json")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    uri.query = URI.encode_www_form({
      "api-key" => ENV['NYT_API_KEY'],
      "q" => "tarot",
      "fl" => "snippet, web_url, headline"
    })
    request = Net::HTTP::Get.new(uri.request_uri)
    @result = JSON.parse(http.request(request).body)
  end

  # def printArticles
  #   @result["response"]["docs"].each do |article|
  #     return article["web_url"]
  #   end
  # end
end
