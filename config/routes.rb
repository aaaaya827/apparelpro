# frozen_string_literal: true

Rails.application.routes.draw do
  get 'questions/new'
  get 'questions/create'
  devise_for :users

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
  end

  resources :questions, only: [:index, :new, :create, :show, :destroy, :edit, :update]
  resources :users, only: :show
  resources :tasks

  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :manuals, only: %i[index show], param: :category

  root 'static_pages#top'
end
