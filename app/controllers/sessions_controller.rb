class SessionsController < ApplicationController
  def new
  end

  def destroy
    session[:user] = nil
    redirect_to root_url, notice: 'Logged out'
  end
  
end
