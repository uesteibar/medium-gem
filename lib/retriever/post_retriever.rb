require "./lib/model/post"

class PostRetriever
  def load(user_id, post_id)
    content = ""
    open("https://www.medium.com/@#{user_id}/#{post_id}?format=json") do |file| 
      file.each_line do |line|
        content << line
      end
    end

    parsed = JSON.parse(content[16..-1])["payload"]["value"]
    Post.new(parsed["title"], parsed["content"]["subtitle"], normalize_content(parsed["content"]["bodyModel"]["paragraphs"]))
  end

  def normalize_content(paragraphs_raw)
    body = ""
    paragraphs_raw[1..-1].each do |paragraph|
      body << paragraph["text"] + "\n\n"
    end
    body
  end
end
