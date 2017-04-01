require 'spec_helper'

describe UrlParser do
  before do
    @subject = UrlParser.new("https://medium.com/@uesteibar?format=json")
    allow(@subject).to receive(:content).and_return('])}while(1);</x>{"success":true,"payload":{"value":{"userId":"9090","name":"uesteibar","username":"uesteibar","createdAt":1425379080595,"lastPostCreatedAt":1439750350373,"imageId":"hola.png","backgroundImageId":"","bio":"Software Developer","twitterScreenName":"uesteibar","facebookAccountId":"","type":"User"},"collections":[],"collectionCount":0,"latestPosts":[]}}')
  end

  describe '#parse' do
    it 'parses the url properly' do
      response = @subject.parse
      expect(response['value']['username']).to eq 'uesteibar'
    end
  end
end
