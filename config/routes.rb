Blogger::Application.routes.draw do
  root to: 'articles#index'
  # this statement tells Rails we are using RESTful convention
  resources :articles do
  	resources :comments
  end
  resources :tags
  
end
