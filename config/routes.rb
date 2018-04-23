Rails.application.routes.draw do
  get 'auth/:provide/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy'

  resources :sessions, only: [:create, :destroy]
  get 'welcome/index'
<<<<<<< HEAD

  resources :users do
    resources :contacts
  end
=======
>>>>>>> b7da40c3b35e29e1e025909eafb1b5316f4a7e35
  
    resources :contacts

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
