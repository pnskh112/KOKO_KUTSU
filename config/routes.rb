Rails.application.routes.draw do
  # # ログイン / ログアウト
  # get     'login',   to: 'sessions#new'
  # post    'login',   to: 'sessions#create'
  # delete  'logout',  to: 'sessions#destroy'

  root to: "boxes#new"
  resources :users, except:[:index]
  resources :admins, except:[:index]

  resources :boxes, except:[:update,:destroy]
  resources :shoes, only:[:index]
  # patch "boxes/:id", to:  "shoes"

  # resources :signup do
  #   collection do
  #     get 'step1'
  #     get 'step2'
  #     get 'done'
  #   end
  # end

end
