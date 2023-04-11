Rails.application.routes.draw do
  resources :comics do
    collection do
      get 'high_rated', to: 'high_rated_comics#index'
      get 'boy', to: 'categories#boy'
      get 'girl', to: 'categories#girl'
    end
  end
end
