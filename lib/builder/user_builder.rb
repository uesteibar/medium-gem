require 'model/medium_user'

class UserBuilder
  def initialize(raw_user)
    @raw_user = raw_user
  end

  def build
    name = raw_user['name']
    username = raw_user['username']
    user_id = raw_user['userId']
    bio = raw_user['bio']

    MediumUser.new(name, username, user_id, bio)
  end

  private

  attr_reader :raw_user
end
