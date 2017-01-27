require "data_mapper"
require "dm-postgres-adapter"

class Link
  include DataMapper::Resource

  property :link_id,         Serial    # An auto-increment integer key
  property :link_title,      String    # A varchar type string, for short strings
  property :link_url,        String    # A varchar type string, for short strings
end

  # DataMapper.setup(:default, 'postgres://localhost/bookmark_manager_test')
  # DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
  DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
  DataMapper.finalize
  DataMapper.auto_upgrade!
