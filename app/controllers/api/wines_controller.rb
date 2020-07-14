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
      vintner: params[:vintner],
      varietal: params[:varietal],
      vintage: params[:vintage],
      pairings: params[:pairings],
      region: params[:region],
      tasting_notes: params[:tasting_notes]
      )
      @wine.save
      render 'show.json.jb'
  end

  def update
    @wine = Wine.find_by(id: params[:id])
    @wine.varietal = params[:varietel] || @wine.varietal
    @wine.vintage = params[:vintage] || @wine.vintage
    @wine.vintner = params[:vintner] || @wine.vintner
    @wine.region = params[:region] || @wine.region
    @wine.pairings = params[:pairings] || @wine.pairings
    @wine.tasting_notes = params[:tasting_notes] || @wine.tasting_notes
    @wine.save
    render 'show.json.jb'
  end

  def destroy
    @wine = Wine.find_by(id: params[:id])
    @wine.destroy
    render json: {message: 'You have successfully deleted the wine from the cellar database.'}
  end
end
