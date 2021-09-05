Rails.application.routes.draw do
  
  devise_for :fusers
  resources :fables
  root 'fables#index'
  get 'home/About'
  get 'home/views/deviseregistrations/new'
  #get'home/firstpage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
