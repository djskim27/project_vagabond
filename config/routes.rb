Rails.application.routes.draw do
  get 'posts/new'

  get 'posts/show'

  get 'posts/edit'

  root to: 'cities#index'
  resources :cities
  resources :posts
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
