Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
      resources :resumes, only: [:index]
    end
  end

  resources :jobs do
    resources :resumes, only: [:new, :create]
  end

  root 'jobs#index'
end
