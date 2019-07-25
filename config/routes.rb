Rails.application.routes.draw do
  root "top#index"

  resources :recipes, except: %i(index), module: :recipes do
    resources :steps, only: %i(new edit update create destroy)
    resource :publish, only: %i(create)
    resource :unpublish, only: %i(create)
  end
end
