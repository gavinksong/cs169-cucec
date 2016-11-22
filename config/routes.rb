Rails.application.routes.draw do

  mount ActionCable.server => '/cable'
  resources :conversations, param: :slug
  resources :messages


  devise_for :admins
  root to: 'pages#index'
  
  devise_for :mentors
  devise_for :students
  
  # resources :conversations do
  #   resources :messages
  # end
  
  resources :donate
  
  # students routes
  get 'students' => 'students#index'
  get 'students/listen' => 'students#listen'
  get 'students/speak' => 'students#speak'
  get 'students/read' => 'students#read'
  get 'students/write' => 'students#write'
  post 'students/write' => 'students#createwriting'
  get 'students/chat' => 'students#chat'
  get 'students/watch' => 'students#watch'

  # mentors routes
  get 'mentors' => 'mentors#index'
  get 'mentors/call' => 'mentors/chat'
  get 'mentors/chat' => 'mentors/call'
  
  # admins routes
  resources :admins do
    collection do
      resources :resources
    end
  end

  # resources :admins do
  #   resources :resources
  # end

end
