Crushize::Application.routes.draw do
  get 'auth/twitter/callback' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'

  resources :matches, only: [:new, :create]

  root to: 'static#index'
end
