class Api::WinesController < ApplicationController

  def index
    @wines = WineTag.where(tag_id: params[:tag_id])
    # user_wines = current_user.wine.wine_tags.where(status: "selected")
    # @user_wines = user_wines.wines
  
    # @wines = @wines.wine
    render 'index.json.jb'
  end

  def show
    @wine = WineTag.find_by[params[:id]]
    render 'show.json.jb'
  end

  def create
    # user_wines = current_user.wine_tags.where(status: "selected")
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
