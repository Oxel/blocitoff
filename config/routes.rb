Rails.application.routes.draw do
  root 'todos#index'
  
  resources :users do
    resources :todos
  end
end
