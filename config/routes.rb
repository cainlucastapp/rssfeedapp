Rssfeedapp::Application.routes.draw do
  root :to => 'sites#index'
  get "sites/index"
  get "sites/show"
  match 'home' => 'sites#index'
  match 'world' => 'sites#world'
  match 'us' => 'sites#us'
  match 'business' => 'sites#business'
  match 'stocks' => 'sites#stocks'
  match 'politics' => 'sites#politics'
  match 'crime' => 'sites#crime'
  match 'technology' => 'sites#technology'
  match 'health' => 'sites#health'
  match 'entertainment' => 'sites#entertainment'
  match 'contact' => 'sites#contact'
    
 
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

 
end
