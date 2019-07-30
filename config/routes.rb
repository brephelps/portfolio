Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :homes
  get 'code_samples', to: 'homes#code_samples'
  get 'web_apps', to:'homes#web_apps'
  get 'skills', to: 'homes#skills'
  get 'contact', to: 'homes#contact'
  resources :contacts, only: [:create, :show]
  get '/contacts/:id', to: 'contacts#show', as: 'contacts_show'
end
