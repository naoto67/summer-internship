class TopController < ApplicationController

  def index
    @recipes = Recipe.includes(:steps, :ingredients).all
  end
end
