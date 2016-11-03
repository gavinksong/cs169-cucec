Rails.application.routes.draw do
  devise_for :mentors
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

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
