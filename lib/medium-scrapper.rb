require "./lib/retriever/user_retriever"
require "./lib/retriever/post_retriever"

class MediumScrapper
  attr_reader :user

  def load_user(username)
    UserRetriever.new.load(username)
  end
end
