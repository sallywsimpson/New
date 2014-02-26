Week6::Application.routes.draw do

  # get "/" => 'index'
  get "/" => 'products#index'

  get "/users/new" => 'users#new'
  get "/users/create" => 'users#create'

# Directions - from directions file
# Directions::Application.routes.draw do
 # get "/search" => "search"
 # get "/location/results" => "location#results"
# end

# Reservation related URLs

  # CREATE
  get "/reservations/new" => "reservations#new"
  get "/reservations/create" => "reservations#create"


  # READ
  get "/reservations" => 'reservations#index'
  get "/reservations/:reservation_id/show" => "reservations#show"

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


  # Review-related URLs

  get "/reviews/create" => 'reviews#create'

end
