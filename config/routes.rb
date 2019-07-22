Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :homes
  root 'code_samples#index'
  resources :code_samples
  root 'web_apps#index'
  resources :web_apps
  root 'skills#index'
  resources :skills
  root 'contact#index'
  resources :contact
end
