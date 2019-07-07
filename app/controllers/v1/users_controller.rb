class V1::UsersController < ApplicationController
  before_action :authenticate_user!, except: [:create]

  def create
    if User.exists?(email: params[:user][:email])
      message = ["message": "Email address taken"]
      render json: message, status: :conflict
    else
      @user = User.new(new_user_params)
      if @user.save
        UserMailer.verification_email(@user).deliver_later
        render json: @user, status: :ok
      else
        render json: @user.errors, status: :unprocessable_identity
      end
    end
  end

  def agreement
    current_user.verify_agreement
    if current_user.save
      render json: current_user, status: :ok
    else
      render json: current_user.errors, status: :unprocessable_identity
    end
  end

  def verify
    if current_user.email_verification_token == email_verification_token_param
      current_user.verify_email
      if current_user.save
        render json: current_user, status: :ok
      else
        render json: current_user.errors, status: :unprocessable_identity
      end
    else
      message = ["message": "Incorrect email verification token"]
      render json: message, status: :bad_request
    end
  end

  def resend_verification_email
    current_user.refresh_email_verification_token
    render json: current_user, status: :ok
  end

  def update
    current_user.update(update_user_params)
    if current_user.save
      render json: current_user.as_json(except: [:authentication_token]), status: :ok
    else
      render json: current_user.errors, status: :unprocessable_identity
    end
  end

  private

  def new_user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def email_verification_token_param
    params[:email_verification_token].to_s
  end

  def update_user_params
    params.require(:user).permit(:beans_g, :berries_g, :other_fruits_g, :cruciferous_vegetables_g,
      :greens_g, :other_vegetables_g, :flaxseeds_g, :nuts_g, :turmeric_g, :whole_grains_g, :other_seeds_g,
      :cals_g, :fat_g, :carbs_g, :protein_g, :weekly_email)
  end
end
