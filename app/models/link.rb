require "data_mapper"
require "dm-postgres-adapter"

class Link
  include DataMapper::Resource

  has n, :tags, through: Resource

  property :id,         Serial    # An auto-increment integer key
  property :title,      String    # A varchar type string, for short strings
  property :url,        String    # A varchar type string, for short strings

end
