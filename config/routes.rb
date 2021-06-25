Rails.application.routes.draw do
  get 'list/index'
  get 'list/show'
  get 'list/create'
  get 'list/edit'
  get 'list/destroy'
  get 'checklist/show'
  get 'checklist/edit'
  get 'checklist/index'
  get 'checklist/update'
  get 'checklist/destroy'
  get 'messages/create'
  get 'chatroom/show'
  get 'onboarding/index'
  get 'onboarding/show'
  get 'onboarding/edit'
  get 'onboarding/destroy'
  get 'profile/index'
  get 'profile/show'
  get 'profile/view'
  get 'profile/create'
  get 'profile/destroy'
  get 'profile/edit'
  get 'profile/update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_for :users
  # root to: 'pages#home'

  # resources :profiles

  # resources :onboardings

  # resources :users

  # resources :checklists

   # resources :chatrooms, only: :show do
     #resources :messages, only: :create
   # end
end
