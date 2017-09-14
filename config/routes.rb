Rails.application.routes.draw do
  resources :incoming_mail_commenters
  devise_for :users
  resources :incoming_mails do
    resources :comments
  end
  resources :outgoing_mails do
    resources :comments
  end
  
  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
