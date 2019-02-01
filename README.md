# PLEASE NOTE, THIS PROJECT IS NO LONGER BEING MAINTAINED
# Withardry

Gem provides shorcuts for ActiveRecord scopes and to_param method. 

<a href="https://evrone.com/?utm_source=github.com">
  <img src="https://evrone.com/logo/evrone-sponsored-logo.png"
       alt="Sponsored by Evrone" width="231">
</a>

## Getting Started
### Prerequisites

Current version works with Rails 3.x only 
but [old version](https://github.com/evrone/withardry/tree/69914e7e6281df2e748da08e0cf6ed4066c5766c) 
is capable with Rails 2.x.

### Installation

    gem "withardry"

### Usage

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

## Contributing

Please read [Code of Conduct](CODE-OF-CONDUCT.md) and [Contributing Guidelines](CONTRIBUTING.md) for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, 
see the [tags on this repository](https://github.com/evrone/withardry/tags). 

## Authors

* [Andrey Ognevsky](https://github.com/ognevsky) - *Initial work*

See also the list of [contributors](https://github.com/evrone/withardry/contributors) who participated in this project.

## License

This project is licensed under the [MIT License](LICENSE).
