Rails.application.routes.draw do
  root to: "pages#index"

  devise_for :users, controller: {
    registration: "users/registrations"
  }
  resources :users, only: :show
  resources :pages, only: :index, path: '/'
end
