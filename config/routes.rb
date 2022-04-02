Rails.application.routes.draw do
  namespace :admin do
    get 'musicals/index'
    get 'musicals/show'
    get 'musicals/new'
    get 'musicals/edit'
  end
  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
  }
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
