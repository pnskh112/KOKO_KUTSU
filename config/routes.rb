Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  # if user_signed_in? 
    root to: "boxes#new"
  # end

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

  resources :shoes, only:[:index]


  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
