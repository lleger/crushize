Crushize::Application.routes.draw do
  get 'auth/twitter/callback' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'

  resources :matches, only: [:create]

  root to: 'static#index'
end
