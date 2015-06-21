
class User
  attr_accessor :name, :username, :user_id, :bio

  def initialize
    @posts = []
  end

  def add_post(post)
    @posts << post
  end

  def posts
    @posts
  end
end
