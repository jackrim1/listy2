Rails.application.routes.draw do
  get 'users/show'

  get 'pages/home'

  root to: 'lists#index'

  devise_for :users
  resources :users
  resources :lists
  resources :items

  get 'lists' => 'lists'

end
