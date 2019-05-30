require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions 

  get '/' do
    erb(:index)
  end

  get '/play' do
    erb(:play)
  end

  post '/names' do 
    $player1 = Player.new(params[:PlayerOne])
    $player2 = Player.new(params[:PlayerTwo])
    redirect '/play'
  end

  # get '/attack' do 
  #   'Player 1 has attacked'
  # end

  post '/play' do 
    Game.new.attack($player2)
    erb(:attack_message)
  end

  run! if app_file == $0
 end