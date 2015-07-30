
class Post
  attr_reader :title, :subtitle, :content, :url
  
  def initialize(title, subtitle, content, url)
    @title = title
    @subtitle = subtitle
    @content = content
    @url = url
  end
end
