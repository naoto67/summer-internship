Rails.application.routes.draw do
  root "top#index"

  resources :recipes, only: %i(show new edit create update), module: :recipes do
    resources :steps, only: %i(new edit update create)
  end
end
