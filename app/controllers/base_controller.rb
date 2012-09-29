class BaseController < ApplicationController
  layout "base_layout"
  def index
    @games = {}
    Dir.glob("app/assets/javascripts/games/*") do |file|
      parts = file.split('/')
      filename = parts[-1].split('.')
      
      game_name = ""
      asset_name = parts[-1].split('.')[0]
      File.open(file).each_line do |line|
        description = ""
        if line.start_with? "# "
          l = line.tr("#", '')
          if l.include? ':'
            parts = l.split(":")
            if parts[0].strip == "asset"
              asset_name = parts[1].strip
            elsif parts[0].strip == "title"
              game_name = parts[1].strip
            end
          else
            description += l.strip + " "
          end
        else
          break
        end
      end
      @games[asset_name] = [game_name, description]
    end

    render :index
  end
end
