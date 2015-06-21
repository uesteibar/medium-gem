
class Post
  attr_reader :title
  
  def initialize(title, subtitle, content)
    @title = title
    @subtitle = subtitle
    @content = content
  end
end
