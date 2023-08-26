Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'calls#index', as: :authenticated_root
      resources :calls

      resources :clients do
        resources :calls
      end
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
