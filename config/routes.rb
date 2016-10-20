Rails.application.routes.draw do
  devise_for :mentors
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  
  match 'services', to: 'pages#services', via: :get
  
  match 'template', to: 'pages#template', via: :get
end
