Rails.application.routes.draw do
  resources :subjects do
    resources :topics, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get 'home/index', as: 'home_index'
  get 'topics', to:'topics#index'
  root 'home#index'
end