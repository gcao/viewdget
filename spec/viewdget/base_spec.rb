require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Viewdget::Base do
  it "should take ERB template and render" do
    input = "a String"
    Viewdget::Base.new("<%= input %>", binding).to_s.should == input
  end
end