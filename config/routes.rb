Blogger::Application.routes.draw do
  root to: 'articles#index'
  # this statement tells Rails we are using RESTful convention
  resources :articles do
  	resources :comments
  end
  resources :tags
  resources :authors

  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
end
