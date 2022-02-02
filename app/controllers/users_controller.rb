class UsersController < ApplicationController
  def index
    @users = User.all.order(:id)
  end

  def user_profile
    @user = User.find(params[:id])
  end

  def show 
    @user = User.find(current_user[:id])
  end

  def state
    @country_key = CS.countries.key("#{params[:country]}")
    @states = CS.states(@country_key)
    # debugger
  end

  def cities 
    @country_key = CS.countries.key("#{params[:country]}")

    @cities = CS.get(@country_key, CS.states(@country_key).key("#{params[:state]}"))
    # debugger
  end

  def destroy
    @user = User.find(current_user[:id]).update(display: 'deleted')
    # debugger
    redirect_to destroy_user_session_path
  end


  def activate
    @user = User.find(params[:id])
    @user.update(display: 'show')
    redirect_to user_profile_path
  end

  def deactivate
    @user = User.find(params[:id])
    @user.update(display: 'deleted')
    redirect_to user_profile_path
  end
end
