class Api::WineTagsController < ApplicationController
  def index
    @wines = WineTag.where(tag_id: params[:tag_id])
  render 'index.json.jb'
  end
end
