class UsersController < ApplicationController
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
end
