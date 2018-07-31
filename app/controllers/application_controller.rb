class ApplicationController < ActionController::Base

  def require_is_admin
    if !current_user.admin?
      flash[:alert] = "请使用管理员操作."
    end
  end
  
end
