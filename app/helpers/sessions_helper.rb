module SessionsHelper
  def login(user)
    session[:user_id] = user.id
  end

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find(params[:user_id]) if session[:user_id] 
  end

  def logout
    session[:user_id] = nil
  end
end
