Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'cats#index'

  resources :cats, only: [:index, :show, :new, :create, :edit, :update]
  resources :articles, only: [:index, :show, :new, :create, :edit, :update]
  resources :sessions, only: [:new, :create]

end
