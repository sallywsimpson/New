class Reservation < ActiveRecord::Base
  # #validations
  # validates_presence_of :name
  # validates_presence_of :people

  # # Callbacks
  # after_save :sendmeanemail

  # def send_me_an_email
  #     Confirmation.reservation_created(self).deliver
  # end

end

 def create
    reservation = Reservation.new
    reservation.day = params[:day]
    reservation.time = params[:time]
    reservation.time_id = params[:time_id]
    reservation.user_id = session[:user_id]
    reservation.save
    redirect_to "/products/#{review.item_id}/show"
  end
