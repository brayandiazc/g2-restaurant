Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/terms'
  resources :categories
  root "pages#home"
end
