class User < ActiveRecord::Base
  has_many :posts, :dependent => :destroy
end

class Post < ActiveRecord::Base
  belongs_to :user
  
  withardry :title
  withardry :title, :prefix => "containing"
  withardry :user, :as => "user_id", :prefix => "by"
end