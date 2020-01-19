# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get 'ping', to: 'ping#ping', as: 'ping'

      resources :users do
        resources :widgets, only: %i[index show]
      end

      resources :widgets
    end
  end
end
