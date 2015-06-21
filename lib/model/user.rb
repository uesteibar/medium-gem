
class User
  attr_reader :name, :username, :user_id, :bio, :posts

  def initialize(name, username, user_id, bio)
    @name = name
    @username = username
    @user_id = user_id
    @bio = bio
    @posts = []
  end

  def add_post(post)
    @posts << post
  end
end
