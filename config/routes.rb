Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
  end

  resources :users, only: :show
  resources :tasks

  get "up" => "rails/health#show", as: :rails_health_check

  resources :manuals, only: [:index, :show], param: :category

  root 'static_pages#top'
end
