Rails.application.routes.draw do
  root to: 'hobbies#index'

  resources :hobbies
  resources :users

end
