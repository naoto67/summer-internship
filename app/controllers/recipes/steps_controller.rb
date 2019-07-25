class Recipes::StepsController < ApplicationController

  def new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def edit
    @step = Step.find(params[:id])
  end

  def create
    recipe = Recipe.find(params[:recipe_id])
    step = recipe.steps.build(step_params)
    if recipe.save
      # render json: { step: step }
    else
      render :new
    end
  end

  def update
    @step = Step.find(params[:id])
    @step.assign_attributes(step_params)
    if @step.save
      redirect_to @step.recipe
    else
      render :edit
    end
  end

  def destroy
    @step = Step.find(params[:id])
    if @step.destroy
      redirect_to @step.recipe
    else
      render :edit
    end
  end

  private
    def step_params
      params.fetch(:step, {}).permit(:description)
    end
end
