require 'sinatra/base'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions 
  $game = Game.new
  $turn = 1

  get '/' do
    erb(:index)
  end

  get '/play' do
    erb(:play)
  end

  post '/names' do 
    $game.add_player(params[:PlayerOne])
    $game.add_player(params[:PlayerTwo])
    redirect '/play'
  end


  post '/play' do 
    if $turn.even? 
      $game.player_attack(1)
    else
      $game.player_attack(2)
    end
    $turn += 1

    erb(:attack_message)
  end

  run! if app_file == $0
 end