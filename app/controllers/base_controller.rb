class BaseController < ApplicationController
  def index
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
