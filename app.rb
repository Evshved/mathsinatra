require 'sinatra'
require 'haml'
require 'rubygems'
require './controllers/switch_of_equations'
require './controllers/solve_linear'
require './controllers/solve_quadratic'

set :public_folder, 'public'

get '/' do
  haml :index
end


post '/' do
  if request.xhr?
    @post = params[:post]
    @equation = MainEquations.new
    if switch.to_i == "1"
      @equation.linear(@post[:k].to_f,@post[:b].to_f,@post[:y].to_f)
    else
      @equation.linear(@post[:a].to_f,@post[:b].to_f,@post[:c].to_f,@post[:y].to_f)
    end
    redirect 'public/index.haml'
    # get to field answer
  end
end


