class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:user][:email]).try(:authenticate, params[:user][:password])
    login(user) if user
    redirect_to user ? activities_url : :back
  end

  def delete
    logout
    redirect_to root_url
  end
end
