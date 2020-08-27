class Api::WineTagsController < ApplicationController
  def index
    @wine_tags = WineTag.all
    render 'index.json.jb'
  end
end
