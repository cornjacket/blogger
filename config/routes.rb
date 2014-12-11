Blogger::Application.routes.draw do
  # this statement tells Rails we are using RESTful convention
  resources :articles 
  root to: 'articles#index'
end
