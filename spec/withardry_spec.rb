require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/models'

describe "Post" do
  
  before(:each) do
    @user = User.create! :login => "user"
    @post = @user.posts.create! :title => "first"
  end
  
  it "should find with default options" do
    Post.with_title(@post.title).should == [@post]
  end

  it "should find with :prefix option" do
    Post.containing_title(@post.title).should == [@post]
  end
  
  it "should find with :prefix and :as options" do
    Post.by_user(@post.user.id).should == [@post]
  end
end