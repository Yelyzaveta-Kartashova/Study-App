Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }


  resources :subjects do
    resources :topics do
      resources :lessons
    end
  end

  resources :users do
    resources :assignments, only: [:edit, :create, :update, :destroy], controller: 'assignments'
  end

  # Health status check
  get "up" => "rails/health#show", as: :rails_health_check
  
  get 'topics', to:'topics#index'
  root 'subjects#index'
end
