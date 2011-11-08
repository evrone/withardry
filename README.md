# Withardry

Gem provides shorcuts for ActiveRecord scopes and to_param method. Current version works with Rails 3.x only but [old version](https://github.com/evrone/withardry/tree/69914e7e6281df2e748da08e0cf6ed4066c5766c) is capable with Rails 2.x.
## Install

    gem "withardry"

## Usage

    class Post < ActiveRecord::Base      
      withardry :title
      
      # exactly same as
      # scope :with_title, lambda { |t| where(:title => t) }
      
      friendly_url
      # same as to_param with model id and name attribute
      
      friendly_url :title
      # same as to_param with model id and title attribute
    end
    
Now use this inside your app:

    Post.with_title("Some title")
    
    post = Post.create(:title => "Title Example")
    post.to_param # => "1-title-example"

Sure, it can handle some options

    class Post < ActiveRecord::Base
      belongs_to :user
      
      withardry :user, :prefix => "by", :as => "user_id"
      
      // exactly same as
      // scope :by_user, lambda {|u| where(:user_id => u) }
    end

And then anywhere in your app

    Post.by_user(some_user_id)

## Contributors 

- [Andrey Ognevsky](https://github.com/ognevsky), [Evrone Company](https://github.com/evrone)
- [Kirill Shatrov](https://github.com/kirs/), [Evrone Company](https://github.com/evrone)

## Todo

- Ensure that tests work with Rails 3
- Add support of relations in withardry method (e.g. use of `withardry :user` is equal to `withardry :user_id` if there is a relation with User)

## Feel free for pull requests