class Article
  def make_NYT_API_call
    uri = URI("https://api.nytimes.com/svc/search/v2/articlesearch.json")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    uri.query = URI.encode_www_form({
      "api-key" => ENV['NYT_API_KEY'],
      "q" => "tarot",
      "begin_date" => "20170101",
      "end_date" => "20181212",
      "fl" => "abstract"
    })
    request = Net::HTTP::Get.new(uri.request_uri)
    @result = JSON.parse(http.request(request).body)
  end
end
