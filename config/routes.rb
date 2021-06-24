Rails.application.routes.draw do
  get 'chatroom/show'
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
