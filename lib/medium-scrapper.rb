require "./lib/retriever/user_retriever"
class MediumScrapper
  attr_reader :posts
  
  def initialize(username)
    @user = UserRetriever.new.load(username)
  end
end
