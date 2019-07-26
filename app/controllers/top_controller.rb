class TopController < ApplicationController

  def index
    @recipes = Recipe.where(status: :published).order(created_at: :desc).first(20)
  end
end
