Rails.application.routes.draw do


 
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
  get 'welcome/index'
  resources :pictures, except: ["index"]
  resources :galleries, except: ["index"]


end
