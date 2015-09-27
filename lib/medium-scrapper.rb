require "retriever/user_retriever"
require "parser/url_parser"

class MediumScrapper
  attr_reader :user

  def load_user(username)
    UserRetriever.new(UrlParser).load(username)
  end
end
