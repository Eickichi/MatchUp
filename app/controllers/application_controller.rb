class ApplicationController < ActionController::Base
    
    
    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
        devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
      end

    def current_user
        User.find_by(id: session[:user_id])
      end
    
      def authenticate_user
        if !current_user
          redirect_to signin_path, notice: "You must be signed in to do that!"
        end
      end
    
      helper_method :current_user, :authenticate_user

end
