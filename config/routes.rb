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

  authenticate :mentor do
    get '/mentors/index'
  end
  
  resources :donate
end
