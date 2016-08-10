require 'sinatra'
require 'rubygems'

set :public_folder, 'public'

get "/" do
  redirect '/index.html'
end
