Rails.application.routes.draw do
  devise_for :admins
  devise_for :mentors
  devise_for :students
  
  resources :admins
  
  #devise_root
  authenticated :admin do
    root :to => 'admins#index'
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  
  resources :microposts, only: [:create, :destroy]

  

end
