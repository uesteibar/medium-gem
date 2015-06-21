
require "./lib/model/user"

class UserBuilder
  def initialize(raw_user)
    @raw_user = raw_user
  end

  def build
    name = @raw_user["name"]
    username = @raw_user["username"]
    user_id = @raw_user["userId"]
    bio = @raw_user["bio"]

    User.new(name, username, user_id, bio)
  end
end
