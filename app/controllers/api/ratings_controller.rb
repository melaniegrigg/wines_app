class Api::RatingsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]
  def index
    @ratings = current_user.ratings
    render "index.json.jb"
  end

  def show
    @rating = Rating.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @rating = Rating.new(
      vintner: params[:vintner],
      rating: params[:rating],
      notes: params[:notes],
      user_id: current_user.id
    )
      if @rating.save
        render "show.json.jb"
      else
        render json: {errors: @rating.errors.full_messages}, status: :bad_request
      end
  end

  def update
    @rating = Rating.find_by(id: params[:id])
    @rating.vintner = params[:vintner] || @rating.vintner
    @rating.rating = params[:rating] || @rating.rating
    @rating.notes = params[:notes] || @rating.notes
    if @rating.save
      render "show.json.jb"
    else
      render json: {errors: @rating.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    @rating = Rating.find_by(id: params[:id])
    @rating.destroy

    render json: {message: "Rating successfully destroyed from database"}
  end

end