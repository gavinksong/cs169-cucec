Rails.application.routes.draw do
  
  root to: 'pages#index'
  
  devise_for :mentors
  devise_for :students
  
  resources :conversations do
    resources :messages
  end
  
  resources :donate
  
  resource :mentors do
  end
  
  resource :students do
    get 'listen' => 'students#listen'
    get 'speak' => 'students#speak'
    get 'read' => 'students#read'
    get 'write' => 'students#write'
    get 'chat' => 'students#chat'
    get 'watch' => 'students#watch'
  end

end
