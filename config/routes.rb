Rails.application.routes.draw do
  devise_for :admins
  devise_for :mentors
  devise_for :students
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  
  resources :admin
  
  #devise_root
  authenticated :admin do
    root 'admins#index', as: :authenticated_root
  end
end
