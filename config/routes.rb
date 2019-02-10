Rails.application.routes.draw do
  root "dashboard#index"

  post "/filter_expense_type", to: 'expenses#filter_expense_type'
  post "/filter_category", to: 'expenses#filter_category'

  resources :expenses, only: [:index, :new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
