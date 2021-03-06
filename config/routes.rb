Rails.application.routes.draw do
  get 'sessions/new'=> 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete '/sessions.current'  => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants do
    resources :reservations
  end

  resource :user

end
