class RegistrationsController < Devise::RegistrationsController
  private
  define sign_up_params
  params.require(:user).permit(:phone_number, :email, :password, :password_confirmation)
  end
end