module Withardry
  def withardry(name, options = {})
    field  = options[:as]     || name
    prefix = options[:prefix] || "with"
    
    named_scope "#{prefix}_#{name}", lambda {|value| {:conditions => {"#{field}" => value}}}
  end
end