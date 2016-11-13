Rails.application.routes.draw do


  devise_for :admins
  root to: 'pages#index'
  
  devise_for :mentors
  devise_for :students
  
  resources :conversations do
    resources :messages
  end
  
  resources :donate
  
  # students routes
  get 'students' => 'students#index'
  get 'students/listen' => 'students#listen'
  get 'students/speak' => 'students#speak'
  get 'students/read' => 'students#read'
  get 'students/write' => 'students#write'
  get 'students/chat' => 'students#chat'
  get 'students/watch' => 'students#watch'

  # mentors routes
  get 'mentors' => 'mentors#index'
  get 'mentors/call' => 'mentors/chat'
  get 'mentors/chat' => 'mentors/call'
  
  # admins routes
  get 'admins' => 'admins#index'
  
  #admin's text upload  
  get 'admins/resources/index' => 'resources#index'
  get 'admins/resources/new' => 'resources#new'
  post 'admins/resources/create' => 'resources#create'
  delete 'admins/resources/destroy' => 'resources#destroy'

  # resources :admins do
  #   resources :resources
  # end

end
