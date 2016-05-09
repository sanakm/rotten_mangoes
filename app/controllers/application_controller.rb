class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def restrict_access
    if !current_user
      flash[:alert] = "You must log in."
      redirect_to new_session_path
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end





  # def check_user
  #   @user = User.find_by(id: session[:user_id])
  #   if @user
  #     session.delete(:login_error)
  #   else
  #     session[:login_error] = "You must be logged in."
  #     redirect '/login'
  #   end
  # end

  # def is_employee?
  #   @user = User.find_by(id: session[:user_id])
  #   if @user.account_type
  #     # binding.pry
  #    session.delete(:login_error)
  #  else
  #   session[:login_error] = "You are not authorized to see this page"
  #   redirect '/login'
  #   end
  # end



  helper_method :current_user, :is_employee?
  
end
