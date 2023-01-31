class UsersController < ApplicationController
  def new
    # @error_msg = 'User Already Exist'
  end


  
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      @error_msg = 'User already exist'
      redirect_to '/users/new', :error_msg => 'User Already Exist'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end