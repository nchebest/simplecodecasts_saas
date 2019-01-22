Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
     resources :contacts, only: :create
    get 'contact-us', to: 'contacts#new', as: 'new_contact'
    
    resources :users do
      resource :profile
    end
    get '/about' => 'pages#about'
  root 'pages#home'
end
