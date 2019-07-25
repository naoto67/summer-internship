class Recipes::PublishesController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    if @recipe.published!
      redirect_to @recipe
    else
      redirect_to edit_recipe_path(@recipe)
    end
  end
end
