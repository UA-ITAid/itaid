# == Route Map
#

# frozen_string_literal: true

Rails.application.routes.draw do
  # Defines the root path route ("/")
  get '/' => 'dashboard#index', locale: :uk
  get '/:locale' => 'dashboard#index'

  scope '/:locale', locale: /#{I18n.available_locales.join("|")}/ do
    devise_scope :user do
      # Redirests signing out users back to sign-in
      get 'users', to: 'dashboard#index'
    end
    devise_for :accounts
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  end
end
