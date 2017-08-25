Rails.application.routes.draw do
  resources :price_lists
  resources :ingredients
  resources :recipes
  resources :products
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :units

end
