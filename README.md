# Withardry

Withardry is a Ruby on Rails plugin for DRY'ing models. Every day we write 
code like this:

    named_scope :with_title, lambda { |title| { :conditions => { :title => title }}}

If so, you may find this plugin useful a bit. You can use now something like this:

    class Post < ActiveRecord::Base      
      withardry :title
    end

And use this anywhere inside your app:

    Post.with_title("Some title")

Sure, it can handle some options

    class Post < ActiveRecord::Base      
      belongs_to :user
      
      withardry :user, :prefix => "by", :as => "user_id"
    end

    Post.by_user(some_user_id)


## Install

    ./script/plugin install git://github.com/evrone/withardry.git

