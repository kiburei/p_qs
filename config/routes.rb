Rails.application.routes.draw do

  root 'company#register'
  resources :company do
    get '/verification' => 'company#verify', as: :verify
  end
  get '/tenders' => 'company#tenders', as: :tenders

  devise_for :companies, :controllers => { registrations: 'registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
