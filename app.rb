require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # our routes would go here

  enable :sessions

  get '/' do 
    "Testing infrastructure working!"
    erb :index 
  end 

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name]) 
    $player_2_name = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    erb :attack
  end

  # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
