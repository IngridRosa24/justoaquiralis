Rails.application.routes.draw do
  devise_for :buyers
  devise_for :pymes
  resources :products
  resources :categories
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index" #PAGINA DE INICIO DE JUSTOAQUÍ
end
