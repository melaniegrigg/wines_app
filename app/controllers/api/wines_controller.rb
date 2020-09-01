class Api::WinesController < ApplicationController

  def index
    puts params
    # @wines = Tag.where(tag_id: params[:tag_id]).wines
    @wines = Wine.joins(:tags).where(tags: { id: params[:tags] }).uniq
    # user_wines = current_user.wine.wine_tags.where(status: "selected")
    # @user_wines = user_wines.wines
    render 'index.json.jb'
  end

  def show
    @wine = Wine.find_by[params[:id]]
    render 'show.json.jb'
  end

  def create
    # user_wines = current_user.wine_tags.where(status: "selected")
    @wine = Wine.new(
      varietal: params[:varietal],
      color: params[:color],
      user_wine: current_user.wine
      )
      if @wine.save
      render 'show.json.jb'
    else
      render json: {errors: @post.errors.full_messages}, status: :bad_request
    end
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
