Rails.application.routes.draw do
  get "/api/v1/posts", to: "posts#index"
  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
