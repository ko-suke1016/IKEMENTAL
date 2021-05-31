Rails.application.routes.draw do
  root to: 'tops#index'

  #ユーザー登録
  resources :users
  get 'level_up' => 'users#level_up'
  get 'less_mental' => 'users#less_mental'
  #3択問題から選ばれたものの合計値を出す
  resources :firsts
  get 'firsts_top' => 'firsts#top'
  #性格診断でtypeごとに適正値を出す
  resources :seconds
  #二択問題の正解数を出す
  resources :thirds
  post 'physical' => 'thirds#physical'
  post 'experience' => 'thirds#experience'
  get 'execution' => 'thirds#execution'
  #回復アイテムの実装
  resources :cures
  get 'recovery' => 'cures#recovery'
  post 'recovery_icon' => 'cures#recovery_icon'
  #各回答の結果を保存するテーブル
  resources :question_results
  #ユーザーログイン機能
  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout
  #パスワードリセット
  resources :password_resets, only: %i[new create edit update]

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

end
