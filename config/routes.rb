Rails.application.routes.draw do
  root 'static_pages#home'

  # get 'static_pages/home'
  get 'static_pages/secret',  as: 'secret'
  
  get 'users/new',            as: 'new_user'
  get 'users/show'
  get 'users/edit'
  resources :users
  get 'events/index',         as: 'event'
  get 'events/new',           as: 'new_event'
  get 'events/suscribe/:id',  to: 'events#subscribe'
  resources :events
  get 'sessions/new'
  get    '/login',            to: 'sessions#new'
  post   '/login',            to: 'sessions#create'
  delete '/logout',           to: 'sessions#destroy'  
end