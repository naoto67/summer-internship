class TopController < ApplicationController

  def index
    n = 20
    page = params[:page].to_i || 0
    @recipes = Recipe.where(status: :published).limit(n).offset(page*n).order(created_at: :desc)
  end
end
