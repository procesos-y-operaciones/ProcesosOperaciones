class RegistrationsController < Devise::RegistrationsController

  private

  def update_resource(resource, params)
    return super if params["password"]&.present? # Require current password if user is trying to change password.
    resource.update_without_password(params.except("current_password")) # Allows user to update registration information without password.
  end

  def sign_up_params
    params.require(:user).permit(
      :document, :expedition_date, :expedition_place, :first_name, :second_name,
      :first_lastname, :second_lastname, :born_date, :personal_mail, :corporative_mail,
      :telephone, :celphone, :address, :terms, :identification_type_id, :departament_id,
      :citie_id, :area_id, :charge_id, :genre_id, :generation_range_id, :role_id, :email,
      :password, :password_confirmation, :avatar
    )
  end

  def account_update_params
    params.require(:user).permit(
      :document, :expedition_date, :expedition_place, :first_name, :second_name,
      :first_lastname, :second_lastname, :born_date, :personal_mail, :corporative_mail,
      :telephone, :celphone, :address, :terms, :identification_type_id, :departament_id,
      :citie_id, :area_id, :charge_id, :genre_id, :generation_range_id, :role_id, :email,
      :password, :password_confirmation, :current_password
    )
  end

end
