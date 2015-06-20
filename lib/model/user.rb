
class MediumScrapper::User
  attr_reader :posts
  
  def initialize(username, posts_retriever)
    @username = username
    @posts = posts_retriever.load
  end
end
