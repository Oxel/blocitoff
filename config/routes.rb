Rails.application.routes.draw do

  root 'todos#index'

  get 'sign_up', to: 'users#new', as: 'sign_up'
  get 'sign_in', to: 'sessions#new', as: 'sign_in'
  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'

  resources :users do
    resources :todos
  end
end
