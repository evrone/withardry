require "withardry/version"
require "withardry/base"

# ActiveRecord::Base.send(:extend, Withardry)
ActiveRecord::Base.extend(Withardry)