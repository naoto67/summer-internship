class Recipes::StepsController < ApplicationController

  def new
    @recipe = Recipe.find(params[:recipe_id])
  end
end
