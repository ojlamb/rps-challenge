require 'sinatra/base'
require_relative 'rock_paper_scissors'

class RPS < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :register
  end

  post '/gamepage' do
    if params[:name] == ""
      @name = "Player 1"
    else
      @name = params[:name]
    end
    session[:name] = @name
    $game ||= Game.new
    erb :gamepage
  end

  post '/shoot' do
    @name = session[:name]
    @player1_choice = $game.player1.selection(params[:choice])
    @player2_choice = $game.player2.selection
    @outcome = $game.evaluate_game
    erb :gamepage
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
