Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/secret', as: 'secret'

  get 'users/new', as: 'new_user'

  get 'users/create'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end