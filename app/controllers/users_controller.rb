class UsersController < ApplicationController



def new
end


def create
  user = User.find_by(:first_name => params["first_name"])
    if user.present?
        redirect_to "/users/new", notice: "User name in use. Please choose a different name"
    else
  user = User.new
  user.first_name = params["first_name"]
  user.email = params["email"]
  user.password = params["password"]
  user.admin = "no"
  user.save
  redirect_to "/sessions/new", notice: "Thanks for creating an account, please sign in"
end
end
end


def show
    @user = User.find_by(:id => params[:user_id])
    if @user.id != session[:user_id]
    redirect_to root_url, notice: "Not your profile"
    end

  @bookings = Booking.find_by(:id => session[:user_id])
    # @bookings = Booking.where(:id => session[:user_id])
  end




