Rails.application.routes.draw do
  # get 'users/show'

  # devise_for :users
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    # :sessions => 'users/sessions'
  }

  # devise_scope :user do
  #   get "sign_in", :to => "users/sessions#new"
  #   get "sign_out", :to => "users/sessions#destroy"
  # end
  root 'top#index'

  resources :users, only: [:show]
      namespace :admin do
          resources :users, only: [:index, :new, :create, :show,  :edit, :destroy]
      end

  resources :dairies do
    resources :comments, only: [:create, :destroy]
  end
  resources :dairies do
    collection do
      get 'search'
    end
  end
  resources :costs do
    collection do
      get 'search'
    end
  end
  resources :manufactures do
    collection do
      get 'search'
    end
  end
  resources :events do
    collection do
      get 'search'
    end
  end





  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
