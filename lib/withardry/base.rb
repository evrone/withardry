module Withardry
  # example:
  # withardry OR withardry :user, :prefix => "by", :as => "user_id"
  def withardry(name, options = {})
    field  = options[:as]     || name
    prefix = options[:prefix] || "with"
    
    scope "#{prefix}_#{name}", lambda {|value| where("#{field}" => value) }
  end
  
  # example:
  # friendly_url OR friendly_url :title
  def friendly_url(field = :name)
    define_method(:to_param) do
      attribute = self.send(field)
      stack = [id.to_s]
      stack << attribute.parameterize if attribute.present?
      stack.join("-")
    end
  end
end