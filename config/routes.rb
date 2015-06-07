Rails.application.routes.draw do


  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'main#index'

  post '/main/enter', to: 'main#enter'
  get '/thanks', to: 'main#thanks'

  
end
