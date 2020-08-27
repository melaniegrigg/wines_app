class Api::TagsController < ApplicationController
  def index
    @tags = Tag.all
    render 'index.json.jb'
  end

  def show
    @tag = Tag.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @tag = Tag.new(
      tag: params[:tag],
      )
      @tag.save
      render 'show.json.jb'
  end

  def destroy
    @tag = Tag.find_by(id: params[:id])
    @tag.destroy
    render json: {message: "You have successfully deleted the tag."}
  end
end
