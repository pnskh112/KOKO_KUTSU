Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  root to: "boxes#new"
  resources :boxes, except:[:update,:destroy]

  resources :signup do
    collection do
      get 'step1'
      get 'step2'
      get 'done'
    end
  end

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }


  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
