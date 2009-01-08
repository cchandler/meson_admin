require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/jsimport" do
  before(:each) do
    @response = request("/jsimport")
  end
end