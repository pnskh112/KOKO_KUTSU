Rails.application.routes.draw do
  # # ログイン / ログアウト
  # get     'login',   to: 'sessions#new'
  # post    'login',   to: 'sessions#create'
  # delete  'logout',  to: 'sessions#destroy'

  root to: "boxes#new"
  post "users/new", to: "users#new"
  post "users/create", to: "users#create"
  post "shoes/create", to: "shoes#create"
  post "boxes/new", to: "boxes#new"
  post "shoes/new", to: "shoes#new"
  post "users/:id", to: "users#show"

  resources :users, except:[:index]
  resources :admins, except:[:index]

  resources :boxes, except:[:update,:destroy,:show]
  resources :shoes, only:[:show,:new]
  # patch "boxes/:id", to:  "shoes"

  # resources :signup do
  #   collection do
  #     get 'step1'
  #     get 'step2'
  #     get 'done'
  #   end
  # end

end
