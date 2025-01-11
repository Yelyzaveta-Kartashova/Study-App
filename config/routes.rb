Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get '/users', to: 'admin#index', as: 'users'

  resources :subjects do
    resources :topics do
      resources :lessons do
        post 'generate_content', on: :member, to: 'open_ai#generate_content'
        post 'generate_content', on: :collection, to: 'open_ai#generate_content'
      end
    end
  end

  resources :users do
    resources :assignments, only: [:edit, :create, :update, :destroy], controller: 'assignments'
    member do
      post :update_avatar  
    end
  end

  # Health status check
  get "up" => "rails/health#show", as: :rails_health_check

  get 'tools', to: 'tools#index'
  get 'topics', to:'topics#index'
  root 'subjects#index'
end
