Rssfeedapp::Application.routes.draw do
  root to: 'sites#index'
  get 'contact' => 'sites#contact'
  
  resources :pages, path: '/', only: [:show]  
 
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
end
