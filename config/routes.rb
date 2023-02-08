Rails.application.routes.draw do
  namespace :v1 do
    resources :posts, only: [:index, :create, :show]
  end
end