
Gem::Specification.new do |s|
  s.name        = 'medium-scrapper'
  s.version     = '0.0.0'
  s.date        = '2015-06-20'
  s.summary     = "medium read-only api"
  s.description = "Ruby gem that provides a Medium.com read-only API"
  s.authors     = ["uesteibar"]
  s.email       = 'uesteibar@gmail.com'
  s.files       = [
    "lib/medium-scrapper.rb",
    "lib/model/user.rb",
    "lib/model/post.rb",
    "lib/retriever/posts_retriever.rb",
    "lib/collection/posts_collection.rb",
  ]
  s.homepage    = 'http://rubygems.org/gems/medium-scrapper'
  s.license       = 'MIT'
end
