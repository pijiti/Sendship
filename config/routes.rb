Rails.application.routes.draw do
  root 'stores#index'
  resources :sendships
  resources :stores
end
