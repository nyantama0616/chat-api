class Auth::SessionsController < DeviseTokenAuth::SessionsController
  def create
    logger.debug params
    super
  end

  private
  
  def sign_in_params
    logger.debug "sign_in_params"
    params.permit(:email, :password)
  end
end
