# /app/app.rb
ENV["RACK_ENV"] ||= "development" # run in dev mode by default
# Because RSpec is configured to run in my test env, now I can add data in my app and run the tests without removing the links that I created manually through the web interface.

require 'sinatra/base'
#start server with rackup -p 4567
# require_relative 'models/link'
require_relative "data_mapper_setup"

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
    @tags = Tag.first_or_create(title: params[:tag_input])
    @link = Link.create(title: params[:title_input], url: params[:url_input], tags: [@tags])
    @link.tags << @tags
    @link.save
    redirect '/links'
  end

  get '/tags/bubbles' do
    @link = Link.all
    erb :'links/bubbles'
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
