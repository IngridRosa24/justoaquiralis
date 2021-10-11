Rails.application.routes.draw do
  resources :entrepreneurships
  resources :products
  resources :categories
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index" #PAGINA DE INICIO DE JUSTOAQUÍ
end
