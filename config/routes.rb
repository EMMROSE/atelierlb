Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'about', to: 'pages#about'
  get 'charpente', to: 'pages#charpente'
  get 'agencement', to: 'pages#agencement'
  get 'surmesure', to: 'pages#surmesure'
  get 'verriere', to: 'pages#verriere'
  get 'vitrine', to: 'pages#vitrine'
  resources :works, only: [:index, :show, :create]
  resources :contacts, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
