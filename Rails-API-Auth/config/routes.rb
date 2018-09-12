Rails.application.routes.draw do

  resources :services
  resources :routes
  post 'user_token' => 'user_token#create'
  # Home controller routes.
  root   'home#index'
  get    'auth'            => 'home#auth'

  # Get login token from Knock
  post   'user_token'      => 'user_token#create'

  # User actions
  get    '/users'          => 'users#index'
  get    '/users/current'  => 'users#current'
  post   '/users/create'   => 'users#create'
  patch  '/user/:id'       => 'users#update'
  delete '/user/:id'       => 'users#destroy'


  # External micro service
  DynamicRouter.load
  # get '/posts' => redirect('http://localhost:5001/posts.json')


end
