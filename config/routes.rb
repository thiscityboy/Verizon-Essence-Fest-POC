Rails.application.routes.draw do

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  root 'essence#index'

  
  match '/sandbox', to: 'essence#sandbox', via: 'get'


end
