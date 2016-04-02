class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def require_admin
    unless user_signed_in?
      redirect_to new_user_session_path
    else
      unless self.current_user.role.name == 'techstarterteam'
        flash.alert = 'アクセス権限がありません'
        redirect_to root_path
      end
    end
  end
end
