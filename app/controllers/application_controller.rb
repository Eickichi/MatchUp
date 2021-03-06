class ApplicationController < ActionController::Base
    
  protect_from_forgery with: :exception

    before_action :configure_devise_parameters, if: :devise_controller?  

    def configure_devise_parameters
      devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :user_name, :gamertag, :city, :bio, :birth_date, :social_tag)}
      devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:current_password, :first_name, :last_name, :email, :password, :password_confirmation, :user_name, :gamertag, :city, :bio, :birth_date, :social_tag, :avatar)}
    end

    def after_sign_in_path_for(resource_or_scope)
      root_path
    end
      
    def after_sign_out_path_for(resource_or_scope)
      new_user_session_path
    end

    def authenticate_user
      unless user_signed_in?
        flash[:danger] = "Please log in."
        redirect_to new_user_session_path, flash: {danger: "Vous n'avez pas le droit d'acceder a cette page sans etre connecte"}
      end
    end  
    
    helper_method :authenticate_user
end
