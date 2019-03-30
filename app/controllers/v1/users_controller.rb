class V1::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    
    if @user.save
      render json: @user, status: :ok
    else
      head(:unprocessable_identity)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
