
Gem::Specification.new do |s|
  s.name        = 'medium-scrapper'
  s.version     = '0.0.5'
  s.date        = '2015-06-21'
  s.summary     = "medium read-only api"
  s.description = "Ruby gem that provides a Medium.com read-only API"
  s.authors     = ["uesteibar"]
  s.email       = 'uesteibar@gmail.com'
  s.files       = [
    "lib/medium-scrapper.rb",
    "lib/model/medium-user.rb",
    "lib/model/post.rb",
    "lib/retriever/post_retriever.rb",
    "lib/retriever/user_retriever.rb",
    "lib/builder/user_builder.rb",
    "lib/parser/url_parser.rb",
  ]
  s.homepage    = 'https://github.com/uesteibar/medium-gem'
  s.license       = 'MIT'
end
