Rails.application.routes.draw do
  # devise_for :users
  # get 'task/index'
  # get 'task/show'
  # get 'task/edit'
  # get 'task/destroy'
  # get 'task/create'
  # get 'list/index'
  # get 'list/show'
  # get 'list/create'
  # get 'list/edit'
  # get 'list/destroy'
  # get 'checklist/show'
  # get 'checklist/edit'
  # get 'checklist/index'
  # get 'checklist/update'
  # get 'checklist/destroy'
  # get 'messages/create'
  # get 'chatroom/show'
  # get 'onboarding/index'
  # get 'onboarding/show'
  # get 'onboarding/edit'
  # get 'onboarding/destroy'
  # get 'profile/index'
  # get 'profile/show'
  # get 'profile/view'
  # get 'profile/create'
  # get 'profile/destroy'
  # get 'profile/edit'
  # get 'profile/update'

  root :to => "pages#redirect_to_sign_up"

devise_for :users do
  get "welcome" => "devise/registrations#new", :as => :new_user_registration
  get "account_settings" => "devise/registrations#edit"
  get "sign_in" => "devise/sessions#new"
  get "sign_out" => "devise/sessions#destroy"
  get "new_password", :to => "devise/passwords#new"
end

get 'home',      :to => "user_pages#home"

namespace :user do
  root :to => "user_pages#home"
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_for :users
  # root to: 'pages#home'

  # resources :profiles

  # resources :onboardings

  # resources :users

  # resources :checklists

   # resources :chatrooms, only: :show do
     # resources :messages, only: :create
   # end
end
