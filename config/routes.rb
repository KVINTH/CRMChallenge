Rails.application.routes.draw do

  root 'customers#index', as: 'customers'

  get 'customers/index'
  get 'customers/alphabetized', as: 'alphabetized'

  get 'customers/missing_email', as: 'missing_emails'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
