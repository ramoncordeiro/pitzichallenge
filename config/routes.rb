Rails.application.routes.draw do

  root to:   'pages#home'
  get 'order/create'
  get 'order/destroy'
  get 'order/update'
  #get 'pages/home'


  get 'user/create'
  get 'user/delete'
  get 'user/update'
  get 'pages/home'
  get 'user/new', to: 'user#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
