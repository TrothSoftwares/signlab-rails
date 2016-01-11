Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  resources :designimages
  resources :siteimages
  resources :quotations
  resources :itemtypes
  resources :jobtypes
  resources :items
  resources :enquiries
  resources :agents
  resources :customers
  resources :projects
end
