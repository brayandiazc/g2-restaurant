Rails.application.routes.draw do
  resources :menus
  devise_for :users, controllers: { registrations: "registrations" },
                     path: "",
                     path_names: { sign_in: "login",
                                   sign_out: "logout",
                                   sign_up: "register" }
  get "pages/home"
  get "pages/terms"
  resources :categories
  root "pages#home"
end
