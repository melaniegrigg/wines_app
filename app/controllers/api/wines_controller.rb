class Api::WinesController < ApplicationController

  def index
    @wines = Wine.all
    render 'index.json.jb'
  end

  def show
    @wine = Wine.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @wine = Wine.new(
      varietal: params[:varietal],
      color: params[:color]
      )
      @wine.save
      render 'show.json.jb'
  end

  def update
    @wine = Wine.find_by(id: params[:id])
    @wine.varietal = params[:varietel] || @wine.varietal
    @wine.color = params[:color] || @wine.color
    @wine.save
    render 'show.json.jb'
  end

  def destroy
    @wine = Wine.find_by(id: params[:id])
    @wine.destroy
    render json: {message: 'You have successfully deleted the wine from the cellar database.'}
  end
end
