# /bookmark_manager_challenge/app/app.rb

require 'sinatra/base'
#start server with rackup -p 4567
require_relative 'models/link'

class BookmarkManager < Sinatra::Base
  # set :session_secret, 'super secret'

  get '/' do
    "Hello Wed"
  end

  get '/links' do
    @link = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/add'
  end

  post '/links' do
    @title = params[:title_input]
    @url = params[:url_input]
    # @link = Link.create(@url, @title)
    # Link.create(@url, @title)
    @link = Link.new
    @link.title = @title
    @link.url = @url
    @link.save
    redirect :'links'
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
