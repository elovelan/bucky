puts 'Loading Devise parameter sanitizer'

class User::ParameterSanitizer < Devise::ParameterSanitizer
  private

  #to permit fields on, say, sign_up, we'd patch "sign_up" - full method list is in
  #Devise's default param sanitizer: https://github.com/plataformatec/devise/blob/270e2ece19f20fdbb349b8130c31acc5b222fabb/lib/devise/parameter_sanitizer.rb#L51

  def account_update
    #define our custom strong parameters by monkey patching Devise's account_update method which controls
    #which fields/props are mass assigned in the RegistrationController during /users/edit PUT
    default_params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end

  def sign_up
    default_params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def create
    default_params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end