Rails.application.routes.draw do
  get 'sessions/new'

  root 'todos#index'

  get 'sign_up', to: 'users#new', as: 'sign_up'

  resources :users do
    resources :todos
  end
end
