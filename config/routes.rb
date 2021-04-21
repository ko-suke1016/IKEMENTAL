Rails.application.routes.draw do
  root to: 'tops#index'

  #ユーザー登録
  resources :users
  #3択問題から選ばれたものの合計値を出す
  resources :firsts
  #性格診断でtypeごとに適正値を出す
  resources :seconds
  #二択問題の正解数を出す
  resources :thirds
  #各回答の結果を保存するテーブル
  resources :question_results
  #ユーザーログイン機能
  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
