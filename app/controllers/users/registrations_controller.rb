# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
      super

    # @user = User.find_by(email: "#{params[:user][:email]}")
    # debugger

    # if (@user.display == 'deleted')
    #   @user.update(display: 'show')
    #   redirect_to user_session_path
    # else
    #   super
    # end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  def state
    @states = CS.states(params[:country])
    # debugger
  end

  # PUT /resource
  # def update
  #   super
  # end

  

  # GET /resource/cancel

  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:name, :phone_number, :country, :state, :city, :email, :password, :password_confirmation)}
    # debugger
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
