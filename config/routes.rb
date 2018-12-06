Rails.application.routes.draw do

  devise_for :admins
  root 'company#register'
  resources :administration
  get 'tender/:id/open' => 'administration#open_tenders', as: :open
  get 'tender/:tender_id/tender_application/:id/unseal' => 'administration#unseal', as: :unseal
  get 'tender/:tender_id/tender_application/:id/' => 'administration#tender_application', as: :tender_application
  get 'tender/:tender_id/tender_application/:id/award' => 'administration#award', as: :award
  post 'tender/:tender_id/tender_application/:id/comments' => 'administration#comments', as: :comments
  resources :company do
    get '/verification' => 'company#verify', as: :verify
  end
  get '/tender/:id/application' => 'company#application_form', as: :application
  get '/tenders' => 'company#tenders', as: :tenders
  post '/submit' => 'company#new_application', as: :submit

  devise_for :companies, :controllers => { registrations: 'registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
