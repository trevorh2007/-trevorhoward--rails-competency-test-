Rails.application.routes.draw do
  resources :articles
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'join' }
  
  root to: 'pages#home'
end
