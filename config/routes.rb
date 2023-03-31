Rails.application.routes.draw do
  resources :orders
  resources :people
  get 'welcome/index' 
  #get '/', to 'welcome#index' #get 'rota', to 'controller/action'
  root to: 'welcome#index'
  
  resources :products #cria todas as rotas de um Model
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
