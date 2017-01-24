require 'sinatra/base'
#start server with rackup -p 4567

class BookmarkManager < Sinatra::Base
  set :session_secret, 'super secret'

  get '/' do
    'This is the homepage'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
