Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
  end

  resources :users, only: :show
  resources :tasks

  get "up" => "rails/health#show", as: :rails_health_check

  root 'static_pages#top'
end
