class Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  private
  def sign_up_params
    params.permit(:name, :nickname, :email, :img, :password, :password_confirmation)
  end
end
