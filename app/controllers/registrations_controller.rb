class RegistrationsController < Devise::RegistrationsController

  private

  def update_resource(resource, params)
    return super if params["password"]&.present? # Require current password if user is trying to change password.
    resource.update_without_password(params.except("current_password")) # Allows user to update registration information without password.
  end

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :terms)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :terms)
  end

end
