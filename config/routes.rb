Rails.application.routes.draw do
  root "top#index"

  resources :recipes, only: %i(show new create), module: :recipes do
    resources :steps, only: %i(new create)
  end
end
