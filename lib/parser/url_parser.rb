require "open-uri"
require "json"

class UrlParser
  def initialize(url)
    @url = url
  end

  def parse
    content = ""
    open(@url) do |file|
      file.each_line do |line|
        content << line
      end
    end
    JSON.parse(content[16..-1])["payload"]
  end
end
