class GameController < ApplicationController
  layout "game_layout"

  def new
  end

  def play
    headers['Access-Control-Allow-Origin'] = "*"
  end
end
