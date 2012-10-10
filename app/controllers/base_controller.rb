require 'xml'

class BaseController < ApplicationController
  layout "base_layout"
  def index
    @games = {}
    Dir.glob("app/assets/xml/games/*.xml") do |file|
      parts = file.split('/')
      asset_name = parts[-1].split('.')[0]

      parser = XML::Parser.file(file)

      game = parser.parse

      if !game.find_first('//game/hidden').nil? && params[:admin] != "true"
        next
      end

      title = game.find_first('//game/title').content
      description = game.find_first('//game/description').content
      tags = []
      game.find_first('//game/tags').children.each do |child|
        if child.name != 'text' and !child.name.blank?
          puts child
          puts child.name
          tags << child.name
        end
      end

      @games[asset_name] = [title, description, tags]
    end
    render :index
  end
end
