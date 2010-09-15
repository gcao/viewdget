require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Viewdget do
  it "should take ERB template and render" do
    input = "a String"
    Viewdget.erb("<%= input %>", binding).to_s.should == input
  end
  
  it "should work inside template" do
    ERB.new("<%= Viewdget.erb('a String') %>").result.should == "a String"
  end
  
  it "can be used for layout" do
    @header = "New header"
    layout = Viewdget.erb('<%= @header || "Header" %> <%= @body || "Body" %> <%= @footer || "Footer"%>', binding)
    layout.to_s.should == "New header Body Footer"
  end
  
  it "can be nested" do
    layout = Viewdget.erb('<%= @header || "Header" %> <%= @body || "Body" %> <%= @footer || "Footer"%>', binding)
  end
end
