Rails.application.routes.draw do
  devise_for :mentors
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  resource :student do
    get 'navigation', to: 'students#navigation'
  end
end
