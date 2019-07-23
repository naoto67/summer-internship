class Recipes::RecipesController < ApplicationController

  def show
    @recipe = Recipe.includes(:ingredients, :steps).find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  private
    def recipe_params
      params.fetch(:recipe).permit(:title, :description)
    end
end
