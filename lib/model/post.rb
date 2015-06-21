
class Post
  attr_reader :title
  
  def initialize(title, subtitle, content, url)
    @title = title
    @subtitle = subtitle
    @content = content
    @url = url
  end
end
