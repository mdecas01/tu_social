class RegistrationsController < Devise::RegistrationsController

  private

  #Defines wich attributes can be saved in the database
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  #Defines wich attributes can be updated in the database
  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end