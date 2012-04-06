# coding: utf-8
require 'sinatra'

configure do
  set :session_secret, 'where my sim card'
  enable :sessions
end


set :haml, :format => :html5

get '/' do
  @title = 'missim index'
  @name = 'mike'
  haml :index

end

get '/admin' do
  redirect back
end
