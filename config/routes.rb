Rails.application.routes.draw do

  #タイトル画面、説明画面のrouting
  resources :tops, only: %i(index new)
  root to: 'tops#index'

  #ユーザー登録機能の実装
  resources :users

  #各質問のtopページ
  get 'selects/top'
  get 'counts/top'
  get 'scores/top'

  #各質問の質問、結果画面のrouting
  resources :selects
  resources :counts
  resources :scores

  #ログイン機能のrouting
  get '/login', to: 'user_sessions#new', as: :login
  post '/login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy', as: :logout

end
