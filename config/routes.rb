Rails.application.routes.draw do
  root 'articles#index'
  devise_for :users

  resources :articles, :only => [:index]

  namespace :admin do
    resources :articles
    resources :comments
    resources :authorities
    resources :tags
  end
end
