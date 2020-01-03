Rails.application.routes.draw do


  root to: "boxes#new"

  resources :boxes, except:[:update,:destroy]
  resources :shoes, only:[:index]
  patch "boxes/:id", to:  "shoes"

  # resources :signup do
  #   collection do
  #     get 'step1'
  #     get 'step2'
  #     get 'done'
  #   end
  # end




end
