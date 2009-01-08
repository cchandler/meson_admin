require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/accounts" do
  before(:each) do
    @response = request("/accounts")
  end
end