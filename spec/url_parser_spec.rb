require 'spec_helper'

describe UrlParser do
  before do
    @parser = UrlParser.new("https://medium.com/@uesteibar?format=json")
  end

  describe "#parse" do
    it "parses the url properly" do
      expect(@parser.parse).to be_truthy
    end
  end
end
