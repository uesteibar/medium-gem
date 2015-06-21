
require "./lib/model/post"

class PostRetriever
  def initialize(parser)
    @parser = parser
  end

  def load(user_id, post_id)
    parsed_url = parse_url(user_id, post_id)

    Post.new(parsed_url["title"], parsed_url["content"]["subtitle"], normalize_content(parsed_url["content"]["bodyModel"]["paragraphs"]))
  end

  def normalize_content(paragraphs_raw)
    body = ""
    paragraphs_raw[1..-1].each do |paragraph|
      body << paragraph["text"] + "\n\n"
    end
    body
  end

  def parse_url(user_id, post_id)
    @parser.new("https://www.medium.com/@#{user_id}/#{post_id}?format=json").parse["value"]
  end
end
