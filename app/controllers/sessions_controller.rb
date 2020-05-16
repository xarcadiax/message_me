class SessionsController < ApplicationController
  
  before_action :logged_in_redirect, only: [:new, :create]
  

  def new
  end
    
  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
        # good scenario
      session[:user_id] = user.id
      flash[:teal] = "You have successfully logged in"
      redirect_to root_path
    else
        flash.now[:purple] = "There was something wrong with your credentials"
        render 'new'
    end
  end
    
  def destroy
    session[:user_id] = nil
    flash[:teal] = "You have successfully logged out"
    redirect_to login_path
  end

  private
  
  def logged_in_redirect
    if logged_in?
    flash[:red] = "You are already logged in"
    redirect_to root_path
    end
  end
    
end
