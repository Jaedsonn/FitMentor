Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get 'users/complete_profile', to: 'users/registrations#complete_profile', as: 'complete_user_profile'
  end

  resources :students
  resources :professionals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
