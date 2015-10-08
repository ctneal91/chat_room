class SessionsController < ApplicationController
  def new
  end

  def create
    email = params[:email]
    password = params[:password]

    user = User.find_by email: email


    if user.try(:authenticate, password)
      session[:user_id] = user.id 
      if session[:return_to].present?
        redirect_to session[:return_to]
      else
        redirect_to root_path
      end
    else
      flash.now[:alert] = "Something is wrong with your email or password. Try again."
      render :new
    end
  end

end
