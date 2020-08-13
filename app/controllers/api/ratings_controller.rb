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
      vintner: params[:vintner])
    @rating.save
    render "show.json.jb"
  end

  def update
    @rating = Rating.find_by(id: params[:id])
    @rating.update(
      rating: params[:rating],
      notes: params[:notes],
      vintner: params[:vintner],
    )
    render 'show.json.jb'
  end

  def destroy
    @rating = Rating.find_by(id: params[:id])
    @rating.destroy

    render json: {message: "Rating successfully destroyed from databasea"}
  end

end
