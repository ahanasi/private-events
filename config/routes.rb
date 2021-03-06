Rails.application.routes.draw do
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "events#index"
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :events, except: [:destroy, :update, :edit] do
    member do
      get "attend"
    end
  end

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy", as: "logout"
end
