Week6::Application.routes.draw do
  # Homepage
  root 'home#index'
  # get "/" => 'products#index'

  #Log in pages
  get "/login" => 'sessions#new'
  get "/authenticate" => 'sessions#create'
  get "/logout" => 'sessions#destroy'


  get "/users/:user_id/show" => 'users#show'
  get "/users/new" => 'users#new'
  # get "/users/show" => 'users#show'
  get "/users/create" => 'users#create'



  get "/about" => 'about#index'
  get "/locations/results" => "about#results"
  get "/locations" => 'locations#index'


  get "/bookings/create" => 'bookings#create'
  get "/bookings/:booking_id/delete" => "bookings#destroy"

  get "/bookings" => 'bookings#index'

# Directions - from directions file
# Directions::Application.routes.draw do
  get "/sessions/new"
 # get "/search" => "search"
 # get "/location/results" => "location#results"
# end

# Reservation related URLs

  # CREATE
  # get "/reservations/:reservation_day/:reservation_time/new" => "reservations#new"
  get "/reservations/:reservation_id/new" => 'reservations#new'


  # READ
  get "/reservations" => 'reservations#index'
  get "/reservations/:reservation_id/details" => "reservations#details"

  # UPDATE
  get "/reservations/:reservation_id/edit" => "reservations#edit"
  get "/reservations/:reservation_id/update" => "reservations#update"

  # DELETE
  get "/reservations/:reservation_id/delete" => "reservations#destroy"


  # Review-related URLs

  get "/reviews/create" => 'reviews#create'

  # Product-related URLs

  # CREATE
  get "/products/new" => "products#new"
  get "/products/create" => "products#create"


  # READ
  get "/products" => 'products#index'
  get "/products/:product_id/show" => "products#show"

  # UPDATE
  get "/products/:product_id/edit" => "products#edit"
  get "/products/:product_id/update" => "products#update"

  # DELETE
  get "/products/:product_id/delete" => "products#destroy"




end
