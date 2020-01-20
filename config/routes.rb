# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'api/v1/site#home'

  namespace :api do
    namespace :v1 do
      root to: 'site#home'

      get 'ping', to: 'ping#ping', as: 'ping'

      get 'login', to: 'sessions#new'
      post 'login', to: 'sessions#create'
      get 'welcome', to: 'sessions#welcome'

      resources :users do
        resources :widgets, only: %i[index show]
      end

      resources :widgets
    end
  end
end
