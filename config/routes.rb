Rails.application.routes.draw do
  resources :actors
  resources :employees
  resources :movies
  resources :shows
  resources :cinemas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cinemas#index'
end
