Rails.application.routes.draw do

  root 'user/homes#top'

  namespace :admin do
     resources :musicals, only: [:new, :index, :create, :edit, :update, :show]
  end

  devise_for :admins, controllers: {
   sessions:      'admins/sessions',
   passwords:     'admins/passwords',
   registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
   sessions:      'users/sessions',
   passwords:     'users/passwords',
   registrations: 'users/registrations'
   
  }


  namespace :user do
     resources :musicals, only: [:new, :index, :create, :edit, :update, :show]
  end

  namespace :user do
     resources :categories, only: [:new, :index, :create, :edit]
  end

  namespace :user do
     resources :reviews, only: [:new, :index, :create, :edit, :update, :show, :delete]
  end

  namespace :admin do
     resources :categories, only: [:index, :create, :edit, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
