require 'open-uri'
require 'json'

class UrlParser
  def initialize(url)
    @url = url
  end

  def parse
    JSON.parse(content[16..-1])['payload']
  end

  private

  def content
    content = ''
    open(@url) do |file|
      file.each_line { |line| content << line }
    end
    content
  end
end
