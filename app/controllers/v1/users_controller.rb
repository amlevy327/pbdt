class V1::UsersController < ApplicationController
  before_action :authenticate_user!, only: [:update]

  def create
    @user = User.new(new_user_params)
    
    if @user.save
      render json: @user, status: :ok
    else
      head(:unprocessable_identity)
    end
  end

  def verify
    if current_user.email_verification_token == email_verification_token_param
      current_user.verify_email!
      # head :ok
      render json: current_user, status: :ok
    else
      head :bad_request
    end
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
      :cals_g, :fat_g, :carbs_g, :protein_g)
  end
end
