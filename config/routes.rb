Rails.application.routes.draw do
  resources :fruits,  only: [:index, :show], param: :name
  resources :service_fruits, only: %i[show], param: :name
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
