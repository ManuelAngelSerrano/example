Rails.application.routes.draw do
  root_to: "pages#index"
  devise_for :users
  resources :users, only: :show
  resources :pages, only: :index, path: '/'
end
