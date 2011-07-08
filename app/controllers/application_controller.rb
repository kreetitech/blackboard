class ApplicationController < ActionController::Base
  protect_from_forgery


  def after_sign_in_path_for(resource)
    if current_user && current_user.admin?
      departments_path
    else
      super
    end
  end
end
