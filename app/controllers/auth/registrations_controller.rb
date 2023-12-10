class Auth::RegistrationsController < ApplicationController
  def create
    user = User.new(sign_up_params)
    
    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  private
  
  def sign_up_params
    params.permit(:email, :password, :password_confirmation)
  end
end
