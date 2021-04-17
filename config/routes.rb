Rails.application.routes.draw do
  root to: 'tops#index'

  #ユーザー登録
  resources :users
  #ユーザーログイン機能
  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
