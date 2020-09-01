class Api::RatingsController < ApplicationController
  def index
    @ratings = Rating.all
    render "index.json.jb"
  end

  def show
    @rating = Rating.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    # p current_user
    @rating = Rating.new(
      rating: params[:rating],
      notes: params[:notes],
      vintner: params[:vintner],)
      user_id: current_user.id
      if @post.save
        render "show.json.jbuilder"
      else
        render json: {errors: @post.errors.full_messages}, status: :bad_request
      end
    @rating.user_wine.save
    render "show.json.jb"
  end

  def update
    @rating = Rating.find_by(id: params[:id])
    @rating.update(
      rating: params[:rating],
      notes: params[:notes],
      vintner: params[:vintner],
      user_wine: current_user.user_wine
    )
    render 'show.json.jb'
  end

  def destroy
    @rating = Rating.find_by(id: params[:id])
    @rating.destroy

    render json: {message: "Rating successfully destroyed from databasea"}
  end

end
