
require "./lib/model/user"
require "open-uri"
require "json"

class UserRetriever
  def load(username)
    content = ""
    open("https://www.medium.com/@#{username}?format=json") do |file| 
      file.each_line do |line|
        content << line
      end
    end
    parsed = JSON.parse(content[16..-1])["payload"]
    user = User.new
    user.name = parsed["value"]["name"]
    user.username = parsed["value"]["username"]
    user.user_id = parsed["value"]["userId"]
    user.bio = parsed["value"]["bio"]

    user
  end
end
