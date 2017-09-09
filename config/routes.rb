Rails.application.routes.draw do
  root 'weathers#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :weathers, only: [:new, :create, :show]
  
end