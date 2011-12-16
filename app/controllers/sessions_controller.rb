class SessionsController < ApplicationController
  before_filter :require_login, only: [:destroy]
  
  def new
  end
  
  def create
    username = params[:username]
    username.downcase! if username.present?
    @user = User.find(username)
  rescue ActiveRecord::RecordNotFound
    @user = nil
    flash.now[:error] = 'Invalid username or password'
    render :new and return
  else
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user, notice: 'Signed In!'
    else
      flash.now[:error] = 'Invalid username or password'
      render :new
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Signed Out!'
  end
end