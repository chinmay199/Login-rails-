Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'users#index'

  get '/registration' => 'registrations#registration'

  get '/' => 'users#index'                       #login page
  post '/sessions' => 'sessions#create'          #sessions
  post '/users' => 'users#create'                #Users
  get '/dashboard' => 'shoes#index'              #dashboard


end
