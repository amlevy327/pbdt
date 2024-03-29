class V1::SessionsController < ApplicationController
  before_action :authenticate_user!, only: [:destroy]

  def show
    current_user ? head(:ok) : head(:unauthorized)
  end

  def create
    user = User.where(email: params[:email]).first
    if user&.valid_password?(params[:password])
      render json: user, status: :created
    else
      message = ["message": "Incorrect password"]
      render json: message, status: :unauthorized
    end
  end
  
  def destroy
    current_user.authentication_token = nil
    if current_user.save
      message = ["message": "Session destroyed"]
      render json: message, status: :ok
    else
      render json: current_user.errors, status: :unauthorized
    end
  end

end
