class Recipes::RecipesController < ApplicationController

  def show
    @recipe = Recipe.includes(:steps).find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to new_recipe_step_path(@recipe)
    else
      render :new
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.assign_attributes(update_recipe_params)
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

    def update_recipe_params
      params.fetch(:recipe).permit(:title, :description, :status)
    end
end
