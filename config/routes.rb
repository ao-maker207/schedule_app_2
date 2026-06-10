Rails.application.routes.draw do
  resources :schedules
  get "posts/index"
  get "users/index"
  get "lessons/hello", to: "lessons#hello"
  get "lessons/call", to: "lessons#call"
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :users
    resources :posts
  
end
