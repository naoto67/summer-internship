Rails.application.routes.draw do
  root "top#index"

  resources :recipes, only: %i(show), module: :recipes
end
