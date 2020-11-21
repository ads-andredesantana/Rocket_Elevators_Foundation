Rails.application.routes.draw do

  devise_for :user2s
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :employees
  devise_for :users
  
  resources :elevators
  resources :batteries
  resources :customers
  resources :addresses
  resources :columns
  resources :building_details
  resources :buildings
  resource :quotes
  resource :leads
  resource :employees



  ActiveAdmin.routes(self)
  
  root 'pages#index'
  #admin_root ''

  
  # GET routes
  get 'quote' => 'quotes#quote'
  get 'corporate' => 'pages#corporate'
  get 'residential' => 'pages#residential'
  get 'intervention' => 'pages#intervention'
  get 'index' => 'pages#index'
  get 'admin_root' => 'map#index'
  

  # POST routes
  post 'quote/create' => 'quotes#create'
  post 'contact/create' => 'leads#create'
  post 'newIntervention', to: "interventions#newIntervention"
  # post 'pages/twilio' => 'pages#twilio'
end

