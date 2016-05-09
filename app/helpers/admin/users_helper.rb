module Admin::UsersHelper
  def is_employee?
    @user = User.find_by(id: session[:user_id])
    if @user.account_type
      # binding.pry
     session.delete(:login_error)
   else
    session[:login_error] = "You are not authorized to see this page"
    redirect '/login'
    end
  end
end
