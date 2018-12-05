Rails.application.routes.draw do
  devise_for :users
     resources :contacts, only: :create
    get 'contact-us', to: 'contacts#new', as: 'new_contact'
    
    get '/about' => 'pages#about'
  root 'pages#home'
end
