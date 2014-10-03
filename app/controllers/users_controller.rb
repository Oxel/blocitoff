class UsersController < ApplicationController
  skip_before_filter :authenticate_user
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user] = @user.id
      redirect_to user_todos_path(current_user), notice: 'User created'
    else
      flash[:error] = 'User creation failed'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
  
end
