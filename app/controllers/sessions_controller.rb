class SessionsController < ApplicationController
  def new
    @users = User.all
  end

  def create
    email = params[:email]
    password = params[:password]

    user = User.find_by email: email
    if (user.present?) && (user.authenticate(password))
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:alert] = "Something is wrong with your email or password. Try again."
      render :new
    end
  end

end
