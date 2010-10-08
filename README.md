# Withardry

## Install

    ./script/plugin install git://github.com/evrone/withardry.git

## Usage

    class Post < ActiveRecord::Base      
      withardry :title
      
      // exactly same as
      // named_scope :with_title, lambda { |t| { :conditions => { :title => t }}}
    end
    
Now use this inside your app:

    Post.with_title("Some title")

Sure, it can handle some options

    class Post < ActiveRecord::Base
      belongs_to :user
      
      withardry :user, :prefix => "by", :as => "user_id"
      
      // exactly same as
      // named_scope by_user, lambda {|u| { :conditions => { :user_id => u }}}
    end

And then anywhere in your app

    Post.by_user(some_user_id)


## About 

© Ognevsky Andrey, evrone.ru

### Feel free for pull requests