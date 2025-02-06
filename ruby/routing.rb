# config/routes.rb
resources :users do
  member do
    get :profile  # /users/:id/profile
  end

  collection do
    get :active  # /users/active
  end
end


Rails.application.routes.draw do
  resources :patients, only: [:index, :show, :create, :update, :destroy]
end
