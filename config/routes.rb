Rails.application.routes.draw do
  get 'users/show'

  get 'pages/home'

  root to: 'pages#home'

  devise_for :users
  resources :users
  resources :lists

  get 'lists' => 'lists'

end
