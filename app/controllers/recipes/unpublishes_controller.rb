class Recipes::UnpublishesController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    if @recipe.draft!
      redirect_to @recipe
    else
      redirect_to edit_recipe_path(@recipe)
    end
  end
end
