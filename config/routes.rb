Rails.application.routes.draw do

  #top画面の表示
  root to: 'tops#index'

  resources :tops do
    collection do
      #利用規約
      get :terms
      #プライバシーポリシー
      get :privacy
    end
  end

  #お試し問題ページ
  resources :lessons

  #ユーザー登録
  resources :users do
    collection do
      # モーダルの表示
      get :level_up
      # メンタルの値によって問題選択肢画面の表記を変更
      get :less_mental
    end
  end

  #3択問題から選ばれたものの合計値を出す
  resources :firsts

  #二択問題の正解数を出す
  resources :thirds
  post 'physical' => 'thirds#physical'
  post 'experience' => 'thirds#experience'
  get 'execution' => 'thirds#execution'

  #回復アイテムの実装
  resources :cures
  get 'recovery' => 'cures#recovery'
  post 'recovery_icon' => 'cures#recovery_icon'

  #ユーザーログイン機能
  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout

  #パスワードリセット
  resources :password_resets, only: %i[new create edit update]

  #お問い合わせフォームの実装
  resources :inquiries, only: %i[new create]


  # パスワードリセットのテストのためLetter＿openerへのPath
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  # 例外処理を披露Path
  # get '*path', to: 'application#render_404'

end
