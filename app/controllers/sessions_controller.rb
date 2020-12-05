class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(session_params[:username])
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged In!"
    else
      flash.now[:alert] = "Invalid username"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged Out!"
  end

  private

  def session_params
    params.require(:session).permit(:username)
  end
end
