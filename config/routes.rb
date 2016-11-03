Rails.application.routes.draw do

  resources :conversations do
    resources :messages
  end
  devise_for :mentors
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # next step would be to ensure authorization of routes
  root to: 'pages#index'

  get 'listen', :to => 'pages#listen'
  
  get 'watch', :to => 'pages#watch'

  authenticate :mentor do
    get '/mentors/index'
  end
  
  resources :donate

  resource :student do
    get 'navigation', to: 'students#navigation'
  end
  resource :students do
    get 'navigation' => 'students#navigation'

    get 'listening' => 'students#listening'
    get 'speaking' => 'students#speaking'
    get 'reading' => 'students#reading'
    get 'writing' => 'students#writing'
    get 'chatting' => 'students#chatting'
    get 'watching' => 'students#watching'
  end

end
