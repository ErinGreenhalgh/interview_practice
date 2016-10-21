class SessionsController < ApplicationController
  def create
    # byebug
    #check if their info matches a record in the db
    # if so, we want their information in the sessions
    if User.find_by(username: params[:username])
      session[:user_id] = User.find_by(username: params[:username]).id
      redirect_to welcome_path
    else
      flash.now[:error] = "Invalid login"
      render :new
    end

  end

  def logout
    session.clear
    redirect_to login_path
  end

  private
  def user_params
    params.permit(:user).require(:username, :password)

  end
end
