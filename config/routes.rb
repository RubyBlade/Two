Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :orders, only: %i[index show create]
      resources :users, only: %i[show create update destroy]
      resources :tokens, only: [:create]
      resources :products, only: %i[show index create update destroy]
    end
  end
end
