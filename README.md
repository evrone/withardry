# Withardry

## Install

    gem "withardry", :git => "git://github.com/evrone/withardry.git"

## Usage

    class Post < ActiveRecord::Base      
      withardry :title
      
      # exactly same as
      # named_scope :with_title, lambda { |t| { :conditions => { :title => t }}}
      
      friendly_url
      # same as to_param with model id and name attribute
      
      friendly_url :title
      # same as to_param with model id and title attribute
    end
    
Now use this inside your app:

    Post.with_title("Some title")
    Post.to_param # => "1-title-example"

Sure, it can handle some options

    class Post < ActiveRecord::Base
      belongs_to :user
      
      withardry :user, :prefix => "by", :as => "user_id"
      
      // exactly same as
      // named_scope by_user, lambda {|u| { :conditions => { :user_id => u }}}
    end

And then anywhere in your app

    Post.by_user(some_user_id)

## Contributors 

- Ognevsky Andrey, [Evrone Company](https://github.com/evrone)
- [Kirill Shatrov](https://github.com/kirs/), [Evrone Company](https://github.com/evrone)

## Feel free for pull requests