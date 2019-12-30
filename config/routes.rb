Rails.application.routes.draw do
  root to: "boxes#new"
  resources :boxes
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
end
