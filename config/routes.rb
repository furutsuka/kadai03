Rails.application.routes.draw do
root to:'home#top' # ここを追記します
get 'home/about', to: 'home#about'
devise_for :users
resources :users
resources :books
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

