class Api::WinesController < ApplicationController

  def index
    @wines = Wine.all
    render 'index.json.jb'
  end

  def show
    @wine = Wine.find_by(id: params[:id])
    render 'show.json.jb'
  end

  
end
