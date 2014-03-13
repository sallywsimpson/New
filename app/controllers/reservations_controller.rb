class ReservationsController < ApplicationController

  def index
    @reservation_list = Reservation.all
  end

  # def index
  #   day_values = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']
  #   time_values = ['6:00 PM', '7:00 PM', '8:00 PM', '9:00 PM']

  #   reservationtimes = day_values.product(time_values)

  #   @reservation_list = reservationtimes.sample
  # end

  def show
    @reservation = Reservation.find_by(:id => params[:reservation_id])
    # @bookings = Booking.where(:booking_id => @user.id)
  end

def edit
    @reservation = Reservation.find_by(:id => params[:reservation_id])
end

def update
    reservation = Reservation.find_by(:id => params[:reservation_id])
    reservation.party_size = params["party_size"]
    reservation.booking_id = params["booking_id"]
    reservation.save
    redirect_to "/confirmation/reservation_created"
  end


  # # def destroy
  # #   product = Item.find_by(:id => params[:product_id])
  # #   product.destroy
  # #   redirect_to "/products", notice: "That product is toast!"
  # # end

  # def new
  # # @reservation_list = Reservations.find_by(:id => params[:reservation_day]
  #   reservation = Reservations.new
  #   reservation.day = params["day"]
  #   reservation.time1 = params["time"]

  # end
  # def show
  # end

  # def create
  #   reservation = Reservations.new
  #   reservation.name = params["name"]
  #   reservation.party_size = params["party_size"]
  #   reservation.user_id = params[:user_id]
  #   reservation.day = params["day"]
  #   reservation.time1 = params["time"]
  #   reservation.save
  #   redirect_to "/index"
  #   # Confirmation.reservation_created(reservation).deliver
  # end

  # def edit
  #   @product = Item.find_by(:id => params[:product_id])
  # end

  # def update
  #   product = Item.find_by(:id => params[:product_id])
  #   product.name = params["name"]
  #   product.price = params["price"]
  #   product.description = params["description"]
  #   product.image_url = params["image_url"]
  #   product.save
  #   redirect_to "/products"
  # end

end
