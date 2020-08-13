class Api::RatingsController < ApplicationController
  def index
    @ratings = Rating.all
    render "index.json.jb"
  end

  def show
    @rating = Rating.find_by(id: params[:id])
    render "show.json.jb"
  end
end
