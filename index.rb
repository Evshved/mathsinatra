

require 'sinatra'
require 'rubygems'


set :root, File.join(File.dirname(__FILE__), '..')
set :views, Proc.new { File.join(root, "views") }

set :haml, :format => :html5
get '/' do
  haml :index
end
