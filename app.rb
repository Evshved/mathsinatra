require 'sinatra'
require 'rubygems'

set :public_folder, 'public'

get "/" do
  redirect 'public/index.html'
end


