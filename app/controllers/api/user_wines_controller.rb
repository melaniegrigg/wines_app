class Api::UserWinesController < ApplicationController
  def index
    @user_wines = UserWine.all
    render 'index.json.jb'
  end

  def create
    @user_wine = User_wine.new(
      id: params[:id],
      user_id: current_user.id,
      wine_id: params[:wine_id]
    )
    if @product.save
      image = Image.new(
        url: params[:image_url],
        product_id: @product.id
      )
      image.save                                   
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
