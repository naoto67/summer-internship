class TopController < ApplicationController

  def index
    @recipes = Recipe.includes(:steps).all
  end
end
