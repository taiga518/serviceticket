Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'
  post "/items/booking/:id(.:format)", to: 'bookings#create', as: "create_booking"
  get "/booking/detail/:id", to: "bookings#show", as: "booking"
  post "/items/search/search_tmp", to: "items#search_tmp", as:"search_tmp"
  get "/items/search/:key", to: "items#search", as:"search"
  get "user/management", to:"users#management", as:"management"
  post "user/management/confirm", to:"bookings#validate_booking_confirm", as:"validate_booking_confirm"
  post "user/management/confirm/check", to:"bookings#validate_booking", as:"validate_booking"
  root :to => 'top#landing'
  get "/question", to:"application#question_new", as:"question_new"
  post "/question", to:"application#question_create", as:"question_create"
  get "/usage", to:"application#show_usage", as:"show_usage"

  resources :users
  resources :items do
    resources :comments
  end
  
end
