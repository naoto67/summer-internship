class TopController < ApplicationController

  def index
    @recipes = Recipe.includes(:steps).where(status: :published).all
  end
end
