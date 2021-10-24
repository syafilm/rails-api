Rails.application.routes.draw do

  #general scope api
  namespace :api do
    namespace :v1 do

      resources :books, only: %i[] do
        collection do
          post 'update', to: 'books#update'
        end
      end

    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
