class BookingsController < ApplicationController

  def create
    booking = Booking.new
    booking.party_size = params[:party_size]
    booking.user_id = session[:user_id]
    booking.reservation_id = params[:reservation_id]
    booking.save
    redirect_to "/users/#{booking.user_id}/show"

  end

  def destroy
    booking = Booking.find_by(:id => params[:booking_id])
    booking.destroy
    redirect_to "/users/#{booking.user_id}/show", notice: "Your reservation went to the darkside!"
  end

def show
  @bookings = Booking.where(:id => booking_id)
  end
end
