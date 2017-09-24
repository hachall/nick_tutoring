Rails.application.routes.draw do
  root to: 'pages#home'
  resources :emails, only: [:create]
end
