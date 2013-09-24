Chatie02::Application.routes.draw do
  root "site#index"

  resources :messages
end
