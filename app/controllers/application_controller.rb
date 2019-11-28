class ApplicationController < ActionController::Base
 

    def sign_up_params
      devise_parameter_sanitizer.sanitize(:sign_up)
    end
    def account_update_params
      devise_parameter_sanitizer.sanitize(:account_update)
    end
end
