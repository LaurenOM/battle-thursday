require 'sinatra/base'
require 'player'

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

  post '/play' do
    'Player 1 has attacked'
  end

  run! if app_file == $0
 end