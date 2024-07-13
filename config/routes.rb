Rails.application.routes.draw do
  get 'manuals/index'
  get 'manuals/show'
  get 'users/show'
  devise_for :users

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
  end

  resources :users, only: :show
  resources :tasks

  get "up" => "rails/health#show", as: :rails_health_check

  resources :manuals, only: [:index] do
    collection do
      get ':category', to: 'manuals#show', as: 'category'
    end
  end

  root 'static_pages#top'
end
