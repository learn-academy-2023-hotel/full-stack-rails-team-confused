Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/blogs' => 'blog#index', as: 'blogs'
  get '/blogs/new' => 'blog#new', as: 'new_blog'
  get '/blogs/:id' => 'blog#show', as: 'blog'
  post '/blogs' => 'blog#create'
  delete '/blogs/:id' => 'blog#destroy', as: 'delete_blog'

  # Defines the root path route ("/")
  # root "articles#index"
  root "blog#index"
end
