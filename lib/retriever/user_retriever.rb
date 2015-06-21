
require "builder/user_builder"
require "retriever/post_retriever"

class UserRetriever
  def initialize(parser)
    @parser = parser
  end

  def load(username)
    parsed_url = parse_url(username)

    user = UserBuilder.new(parsed_url["value"]).build

    posts_raw = parsed_url["latestPosts"]
    posts_raw.each do |post_raw|
      user.add_post(PostRetriever.new(@parser).load(user.user_id, post_raw["id"]))
    end

    user
  end

  private

  def parse_url(username)
    @parser.new("https://www.medium.com/@#{username}?format=json").parse
  end
end
