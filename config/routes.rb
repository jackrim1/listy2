Rails.application.routes.draw do
  get 'users/show'

  get 'pages/home'

  root to: 'pages#home'

  devise_for :users
  resources :users

  get 'lists' => 'lists'

end
