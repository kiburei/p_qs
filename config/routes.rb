Rails.application.routes.draw do

  root 'companies#register'
  resources :companies

  devise_for :companies, :controllers => { registrations: 'registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
