Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
    resources :products
    resources :sub_subcategories
    resources :subcategories
    resources :categories
end
