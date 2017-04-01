require 'builder/user_builder'
require 'retriever/post_retriever'
require 'pry'

class UserRetriever
  def initialize(parser)
    @parser = parser
  end

  def load(username)
    parsed_url = parse_url(username)

    user = UserBuilder.new(parsed_url['User']).build

    posts_raw = parsed_url['Post']
    posts_raw.each { |post_raw| user.add_post(retrieve_post(post_raw)) }

    user
  end

  private

  def retrieve_post(post_raw)
    PostRetriever.new(@parser).load(user.user_id, post_raw[1]['id'])
  end

  def parse_url(username)
    @parser.new("https://www.medium.com/@#{username}?format=json").parse['references']
  end
end
