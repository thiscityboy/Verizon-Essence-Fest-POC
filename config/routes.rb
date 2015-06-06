Rails.application.routes.draw do

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  root 'cards#index'

  get '/sandbox', to: 'essence#sandbox', as: :social_feed
  post '/vip/form' => 'cards#form_process', as: 'cards_form_process'
  
end
