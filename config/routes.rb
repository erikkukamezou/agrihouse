Rails.application.routes.draw do
  root 'tops#index'
  # get 'users/show'

  # devise_for :users
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    # passwords: 'users/passwords'
    # :sessions => 'users/sessions'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  devise_scope :user do
    post 'users/admin_guest_sign_in', to: 'users/sessions#adomin_guest_sign_in'
  end


  #   get "sign_in", :to => "users/sessions#new"
  #   get "sign_out", :to => "users/sessions#destroy"
  # end

  # post 'tops/guest_sign_in', to:'tops#guest_sign_in'

  # get 'users/show', to: 'users#show'

  resources :users, only: [:show, :index]
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
