class BaseController < ApplicationController
  layout "base_layout"
  def index
    @games = {}
    Dir.glob("app/assets/javascripts/games/*") do |file|
      parts = file.split('/')
      filename = parts[-1].split('.')
      
      asset_name = parts[-1].split('.')[0]
      game_name = File.open(file).first.split[1]
      @games[game_name] = asset_name
    end

    return

    @games = {
      "Tic-Tac-Toe" => "ttt",
      "Connect 4" => "c4",
      "Bagh-Chal" => "baghchal",
      "Othello" => "othello",
      "Atari Go" => "atarigo",
      "Connections" => "connections",
    }
    render :index
  end
end
