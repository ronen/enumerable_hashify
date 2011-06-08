require 'spec_helper'

describe "hashifhy" do
  it "creates a hash with default value of true" do
    [1,2,3,4].hashify.should == {1=>true, 2=>true, 3=>true, 4=>true}
  end

  it "creates a hash with passed value" do
    [1,2,3,4].hashify("a").should == {1=>"a", 2=>"a", 3=>"a", 4=>"a"}
  end

  it "creates a hash with block value" do
    [1,2,3,4].hashify{|n| "a" * n}.should == {1=>"a", 2=>"aa", 3=>"aaa", 4=>"aaaa"}
  end
end
