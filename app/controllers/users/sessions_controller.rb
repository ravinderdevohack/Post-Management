# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    if (User.find_by(email: "#{params[:user][:email]}").display == 'show') 
      super
    else
      redirect_to new_user_registration_path
    end


      # debugger
    # else
    # end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in){|u| u.permit(:email, :password)}
  end
end
