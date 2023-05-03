Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end

  namespace :users_backoffice do
    get 'welcome/index'
  end
  
  namespace :admins_backoffice do
    get 'welcome/index'
  end

  devise_for :users
  devise_for :admins

  resources :order_details
  resources :orders
  resources :people
  resources :products

  get 'welcome/index' 
  get '/people/:id', to: 'peoples#search', as: 'search'
  #get '/', to 'welcome#index' #get 'rota', to 'controller/action'
  root to: 'site/welcome#index'
  
end
