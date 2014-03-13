class SessionsController < ApplicationController
  def new
  end

def destroy
  reset_session
  redirect_to root_url, notice: "You've signed out, thanks for visiting!"
end

  def create
    user = User.find_by(:first_name => params[:fname])
    if user.present?
      if user.password == params[:pwd]
        session[:user_id] = user.id
        redirect_to root_url, notice: "Welcome"
      else
        redirect_to "/sessions/new", notice: "Wrong Password. Please try again."
      end

    else
      redirect_to root_url, notice: "Unknown User"
      end
    end
  end



