Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hello', to: 'application#hello'
  get 'record', to: 'application#record'
  get 'display', to: 'display#index'
end
