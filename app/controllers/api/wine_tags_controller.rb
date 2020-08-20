class Api::WineTagsController < ApplicationController
  def index
    @wine_tags = WineTag.All
    render 'index.json.jb
  end
end
