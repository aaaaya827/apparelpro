# frozen_string_literal: true

Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  get 'terms', to: 'pages#terms'
  get 'privacy_policy', to: 'pages#privacy_policy'
  get 'questions/new'
  get 'questions/create'
  devise_for :users, controllers: {
    passwords: 'users/passwords',
    omniauth_callbacks: "users/omniauth_callbacks",
    registrations: "users/registrations"
  }

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
  end

  resources :questions, only: [:index, :new, :create, :show, :destroy, :edit, :update] do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: :show
  resources :tasks

  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :manuals, only: %i[index show], param: :category do
    post 'complete', on: :member
  end

  resources :contacts, only: [:new, :create]

  resources :notifications, only: :index

  root 'static_pages#top'
end
