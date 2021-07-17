Rails.application.routes.draw do
  get 'ventes/index'
  get 'ventes/show'
  get 'ventes/update'
  get 'ventes/new'
  get 'ventes/edit'
  get 'ventes/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/update'
  get 'users/new'
  get 'users/edit'
  get 'users/destroy'
  resources :produits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
