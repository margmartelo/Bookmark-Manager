require 'sinatra/base'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    Bookmark.connect
    erb :'index'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks'
  end

  get '/bookmarks/new' do
    erb :'new'
  end

  post '/bookmarks' do
    Bookmark.add_bookmark(params[:new_bookmark])
    redirect '/'
  end

  run! if app_file == $0
end
