Rails.application.routes.draw do
  resources :notes
  resources :users
  resources :comments
  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  post '/signup', to: 'user#create'
  post '/quality_content', to: 'note#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
