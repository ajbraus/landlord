Rails.application.routes.draw do
  get 'reviews/new'

  root "site#index"

  get 'users/new', as: 'signup'

  resources :users, except: [:new] do
    resources :reviews
  end
end
