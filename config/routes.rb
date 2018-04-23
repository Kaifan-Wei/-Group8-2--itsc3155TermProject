Rails.application.routes.draw do
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
