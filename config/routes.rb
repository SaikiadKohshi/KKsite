Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # /kksitesというURLでアクセスされたらapp/controller/indexアクションを実行するための記述
  #ここではgetなためページを表示するだけである
  #これはホームページを回す所である
  
  resources :kksites do
    # いいね機能を送る部分
    resources :likes, only: [:create, :destroy]
    # コメント機能を送る部分
    resources :comments, only: [:create, :destroy]
    collection do
    # /kksitesというURLでアクセスされたらapp/controller/profileアクションを実行するための記述
    get :profile
    # /kksitesというURLでアクセスされたらapp/controller/kagoshimashiアクションを実行するための記述
    get :kagoshimashi
    # /kksitesというURLでアクセスされたらapp/controller/hiokishiアクションを実行するための記述
    get :hiokishi  
    # /kksitesというURLでアクセスされたらapp/controller/airashiアクションを実行するための記述
    get :airashi
    #他のも同様にすると
    get :kirishimashi
    get :minamisatsumashi
    get :minamikyushushi
    get :makurazakishi
    get :itikikushikinoshi
    get :satsumasendaishi
    get :ibusukishi
    get :satsumatyou
    get :yusuityou
    get :soshi
    get :shibushishi
    get :tarumizushi
    get :kanoyashi
    get :osakityou
    get :higashikushiratyou
    get :akuneshi
    get :izumishi
    get :isashi
    get :nagashimatyou
    get :kimotsukityou
    get :kinkoutyou
    get :minamiosumityou
    # 取り消し機能をするための記述
    
    end
    
    
  end
  # indexの内容が全て終わったあと、自動的に返すための記述
  # ログイン機能からホームページ(つまりここではkksites#index)に移動させるための記述  
  root 'kksites#index'

end


